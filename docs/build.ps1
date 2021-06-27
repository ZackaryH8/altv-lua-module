param(
    [string] $port="8080",
    [Switch] $cleanMetadata=$false,
    [Switch] $cleanOnly=$false
)

function PostCleanup() {
    Remove-Item -Path 'docfx.zip' -Force 2>&1 > $null
    Remove-Item -Path 'docfx-plugins-typescriptreference.zip' -Force 2>&1 > $null
    Remove-Item -Path 'docfx-plugins-extractsearchindex.zip' -Force 2>&1 > $null
    Remove-Item -Path 'docfx-tmpls-discordfx.zip' -Force 2>&1 > $null
    if($cleanMetadata) {
        Remove-Item -Path './_site/' -Recurse -Force 2>&1 > $null
        Remove-Item -Path './obj' -Recurse -Force 2>&1 > $null
        Remove-Item -Path './api/**.yml' -Force 2>&1 > $null
        Remove-Item -Path './api/.manifest' -Force 2>&1 > $null
    }
}

function GetAssemblyVersion([string] $file) {
    if(-not (Test-Path -Path $file)) { throw "Cannot find path $file, because it does not exist." }
    $ver=(Get-Item -Path $file | Select-Object -ExpandProperty VersionInfo).FileVersion.Split('.')
    if($ver.Length -lt 4) {
        $ver -Join '.'
    } else {
        ($ver | Select -SkipLast 1) -Join '.'
    }
}

function GetPackageVersion([string] $pkgname) {
    $json=(npm list $pkgname --silent --json | ConvertFrom-Json)
    $global:LastExitCode=0 # npm list failing on GitHub package workaround
    if(-not ($json.dependencies)) { throw "Cannot find package $pkgname, because it does not exist." }
    $json.dependencies.$($pkgname).version
}

function FetchAndDownloadRelease([string] $repo, [string] $file, [string] $tag=$null) {
    $global:ProgressPreference='SilentlyContinue'
    if(-not $tag) {
        $tag=((Invoke-WebRequest -UseBasicParsing "https://api.github.com/repos/$repo/releases" | ConvertFrom-Json) | Where-Object { -not $_.prerelease } | Select-Object -First 1 -ExpandProperty "tag_name")
    }
    Invoke-WebRequest -UseBasicParsing "https://github.com/$repo/releases/download/$tag/$file" -OutFile $file
    $global:ProgressPreference='Continue'
    return ([int]$? - 1)
}

function ExtractArchive([string] $path, [string] $dest) {
    if(-not (Test-Path -Path $path)) { throw "Cannot find path $path because it does not exist." }
    $file=Get-Item -Path $path
    if(!$dest) {
        $dest=$file.FullName.Substring(0, $file.FullName.LastIndexOf('.'))
    }
    $global:ProgressPreference='SilentlyContinue'
    Expand-Archive -Path $file -DestinationPath $dest -Force
    $global:ProgressPreference='Continue'
    return ([int]$? - 1)
}

function LogWrap([string] $msg, [ScriptBlock] $action, [boolean] $disResult=$false) {
    Write-Host -NoNewline "$msg . . . "
    try {
        $errcode, $msg=Invoke-Command -ScriptBlock $action
    } catch {
        $err=$true
        $errcode=1
        $msg=$_
    }
    if(-not $err) {
        if(-not ($errcode -is [int])) {
            $errcode=$LastExitCode
        }
        if(-not $msg) {
            $msg=$Error[0].Exception.Message
        }
    }
    if(-not $disResult -and $errcode -eq 0x0) {
        Write-Host -NoNewline -ForegroundColor 'green' "done`n"
    } elseif($errcode -eq -0x1) {
        Write-Host -NoNewline -ForegroundColor 'yellow' "skipped`n"
    } elseif($errcode -gt 0x0) {
        Write-Host -NoNewline -ForegroundColor 'red' "failed"
        Write-Host -ForegroundColor 'red' " with code $($errcode):`n$($msg)"
        exit
    }
}

try
{
    if($cleanOnly) { exit }

    LogWrap "Downloading DocFx package" {
        if(Test-Path "./docfx/docfx.exe") { return -0x1 }
        FetchAndDownloadRelease "dotnet/docfx" "docfx.zip" "v2.56.7" 2>$null
    }
    LogWrap "Extracting DocFx package" {
        if(Test-Path "./docfx/docfx.exe") { return -0x1 }
        ExtractArchive "docfx.zip" "./docfx/" 2>$null
    }

    LogWrap "Downloading DocFx TypeScriptReference package" {
        if(Test-Path "./templates/docfx-plugins-typescriptreference/") { return -0x1 }
        FetchAndDownloadRelease "Lhoerion/DocFx.Plugins.TypeScriptReference" "docfx-plugins-typescriptreference.zip" "v1.1.2" 2>&1 6>$null
    }
    LogWrap "Extracting DocFx TypeScriptReference package" {
        if(Test-Path "./templates/docfx-plugins-typescriptreference/") { return -0x1 }
        ExtractArchive "docfx-plugins-typescriptreference.zip" "./templates/" 2>&1 6>$null
    }

    LogWrap "Downloading DocFx ExtractSearchIndex package" {
        if(Test-Path "./templates/docfx-plugins-extractsearchindex/") { return -0x1 }
        FetchAndDownloadRelease "Lhoerion/DocFx.Plugins.ExtractSearchIndex" "docfx-plugins-extractsearchindex.zip" "v1.0.0" 2>&1 6>$null
    }
    LogWrap "Extracting DocFx ExtractSearchIndex package" {
        if(Test-Path "./templates/docfx-plugins-extractsearchindex/") { return -0x1 }
        ExtractArchive "docfx-plugins-extractsearchindex.zip" "./templates/" 2>&1 6>$null
    }

    LogWrap "Downloading DocFx DiscordFX package" {
        if(Test-Path "./templates/discordfx/") { return -0x1 }
        FetchAndDownloadRelease "Lhoerion/DiscordFX" "docfx-tmpls-discordfx.zip" 2>&1 6>$null
    }
    LogWrap "Extracting DocFx DiscordFX package" {
        if(Test-Path "./templates/discordfx/") { return -0x1 }
        ExtractArchive "docfx-tmpls-discordfx.zip" "./templates/" 2>&1 6>$null
    }

    LogWrap "Installing node dependencies" {
        yarn --version 2>$null
        if($?) {
            yarn install 2>$null
        } else {
            npm install 2>$null
        }
    }

    LogWrap "Tools version" {
        $dotnetVersion=dotnet --version
        $docfxVer=GetAssemblyVersion "./docfx/docfx.exe"
        $pluginVer=GetAssemblyVersion "./templates/docfx-plugins-typescriptreference/plugins/DocFx.*.dll"
        $plugin2Ver=GetAssemblyVersion "./templates/docfx-plugins-extractsearchindex/plugins/DocFx.*.dll"
        $themeVer=cat "./templates/discordfx/version.txt"
        $typedocVer=GetPackageVersion "typedoc"
        $type2docfxVer=GetPackageVersion "type2docfx"
        Write-Host -NoNewline -ForegroundColor "green" "done`n"
        Write-Host ".NET Core v$dotnetVersion"
        Write-Host "DocFx v$docfxVer"
        Write-Host "DocFx TypescriptReference v$pluginVer"
        Write-Host "DocFx ExtractSearchIndex v$plugin2Ver"
        Write-Host "DocFx DiscordFX v$themeVer"
        Write-Host "TypeDoc v$typedocVer"
        Write-Host "type2docfx v$type2docfxVer"
    } $true

    LogWrap "Generating project metadata" {
        $stderr=npx typedoc --options './typedoc.json' 2>$null
        if($LastExitCode -gt 0x0) { return $LastExitCode, $stderr }
        $stderr=npx type2docfx './api/.manifest' './api/' --basePath '.' --sourceUrl 'https://github.com/altmp/altv-types' --sourceBranch 'master' --disableAlphabetOrder 2>&1 6>$null
        return $LastExitCode, $buff
    }

    ./docfx/docfx build "docfx.json" --serve -p $port
}
finally
{
    PostCleanup
}
