# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/Projects/C/altv-lua-module

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/Projects/C/altv-lua-module

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/Projects/C/altv-lua-module/CMakeFiles /mnt/d/Projects/C/altv-lua-module/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/d/Projects/C/altv-lua-module/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named lua-module

# Build rule for target.
lua-module: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 lua-module
.PHONY : lua-module

# fast build rule for target.
lua-module/fast:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/build
.PHONY : lua-module/fast

src/CLuaDefs2.o: src/CLuaDefs2.cpp.o

.PHONY : src/CLuaDefs2.o

# target to build an object file
src/CLuaDefs2.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaDefs2.cpp.o
.PHONY : src/CLuaDefs2.cpp.o

src/CLuaDefs2.i: src/CLuaDefs2.cpp.i

.PHONY : src/CLuaDefs2.i

# target to preprocess a source file
src/CLuaDefs2.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaDefs2.cpp.i
.PHONY : src/CLuaDefs2.cpp.i

src/CLuaDefs2.s: src/CLuaDefs2.cpp.s

.PHONY : src/CLuaDefs2.s

# target to generate assembly for a file
src/CLuaDefs2.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaDefs2.cpp.s
.PHONY : src/CLuaDefs2.cpp.s

src/CLuaFunctionDefs.o: src/CLuaFunctionDefs.cpp.o

.PHONY : src/CLuaFunctionDefs.o

# target to build an object file
src/CLuaFunctionDefs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaFunctionDefs.cpp.o
.PHONY : src/CLuaFunctionDefs.cpp.o

src/CLuaFunctionDefs.i: src/CLuaFunctionDefs.cpp.i

.PHONY : src/CLuaFunctionDefs.i

# target to preprocess a source file
src/CLuaFunctionDefs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaFunctionDefs.cpp.i
.PHONY : src/CLuaFunctionDefs.cpp.i

src/CLuaFunctionDefs.s: src/CLuaFunctionDefs.cpp.s

.PHONY : src/CLuaFunctionDefs.s

# target to generate assembly for a file
src/CLuaFunctionDefs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaFunctionDefs.cpp.s
.PHONY : src/CLuaFunctionDefs.cpp.s

src/CLuaResourceImpl.o: src/CLuaResourceImpl.cpp.o

.PHONY : src/CLuaResourceImpl.o

# target to build an object file
src/CLuaResourceImpl.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaResourceImpl.cpp.o
.PHONY : src/CLuaResourceImpl.cpp.o

src/CLuaResourceImpl.i: src/CLuaResourceImpl.cpp.i

.PHONY : src/CLuaResourceImpl.i

# target to preprocess a source file
src/CLuaResourceImpl.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaResourceImpl.cpp.i
.PHONY : src/CLuaResourceImpl.cpp.i

src/CLuaResourceImpl.s: src/CLuaResourceImpl.cpp.s

.PHONY : src/CLuaResourceImpl.s

# target to generate assembly for a file
src/CLuaResourceImpl.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaResourceImpl.cpp.s
.PHONY : src/CLuaResourceImpl.cpp.s

src/CLuaScriptRuntime.o: src/CLuaScriptRuntime.cpp.o

.PHONY : src/CLuaScriptRuntime.o

# target to build an object file
src/CLuaScriptRuntime.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaScriptRuntime.cpp.o
.PHONY : src/CLuaScriptRuntime.cpp.o

src/CLuaScriptRuntime.i: src/CLuaScriptRuntime.cpp.i

.PHONY : src/CLuaScriptRuntime.i

# target to preprocess a source file
src/CLuaScriptRuntime.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaScriptRuntime.cpp.i
.PHONY : src/CLuaScriptRuntime.cpp.i

src/CLuaScriptRuntime.s: src/CLuaScriptRuntime.cpp.s

.PHONY : src/CLuaScriptRuntime.s

# target to generate assembly for a file
src/CLuaScriptRuntime.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/CLuaScriptRuntime.cpp.s
.PHONY : src/CLuaScriptRuntime.cpp.s

src/Defs/CLuaAltFuncDefs.o: src/Defs/CLuaAltFuncDefs.cpp.o

.PHONY : src/Defs/CLuaAltFuncDefs.o

# target to build an object file
src/Defs/CLuaAltFuncDefs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaAltFuncDefs.cpp.o
.PHONY : src/Defs/CLuaAltFuncDefs.cpp.o

src/Defs/CLuaAltFuncDefs.i: src/Defs/CLuaAltFuncDefs.cpp.i

.PHONY : src/Defs/CLuaAltFuncDefs.i

# target to preprocess a source file
src/Defs/CLuaAltFuncDefs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaAltFuncDefs.cpp.i
.PHONY : src/Defs/CLuaAltFuncDefs.cpp.i

src/Defs/CLuaAltFuncDefs.s: src/Defs/CLuaAltFuncDefs.cpp.s

.PHONY : src/Defs/CLuaAltFuncDefs.s

# target to generate assembly for a file
src/Defs/CLuaAltFuncDefs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaAltFuncDefs.cpp.s
.PHONY : src/Defs/CLuaAltFuncDefs.cpp.s

src/Defs/CLuaVector3Defs.o: src/Defs/CLuaVector3Defs.cpp.o

.PHONY : src/Defs/CLuaVector3Defs.o

# target to build an object file
src/Defs/CLuaVector3Defs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaVector3Defs.cpp.o
.PHONY : src/Defs/CLuaVector3Defs.cpp.o

src/Defs/CLuaVector3Defs.i: src/Defs/CLuaVector3Defs.cpp.i

.PHONY : src/Defs/CLuaVector3Defs.i

# target to preprocess a source file
src/Defs/CLuaVector3Defs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaVector3Defs.cpp.i
.PHONY : src/Defs/CLuaVector3Defs.cpp.i

src/Defs/CLuaVector3Defs.s: src/Defs/CLuaVector3Defs.cpp.s

.PHONY : src/Defs/CLuaVector3Defs.s

# target to generate assembly for a file
src/Defs/CLuaVector3Defs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/CLuaVector3Defs.cpp.s
.PHONY : src/Defs/CLuaVector3Defs.cpp.s

src/Defs/Entity/CLuaBaseObjectDefs.o: src/Defs/Entity/CLuaBaseObjectDefs.cpp.o

.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.o

# target to build an object file
src/Defs/Entity/CLuaBaseObjectDefs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaBaseObjectDefs.cpp.o
.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.cpp.o

src/Defs/Entity/CLuaBaseObjectDefs.i: src/Defs/Entity/CLuaBaseObjectDefs.cpp.i

.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.i

# target to preprocess a source file
src/Defs/Entity/CLuaBaseObjectDefs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaBaseObjectDefs.cpp.i
.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.cpp.i

src/Defs/Entity/CLuaBaseObjectDefs.s: src/Defs/Entity/CLuaBaseObjectDefs.cpp.s

.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.s

# target to generate assembly for a file
src/Defs/Entity/CLuaBaseObjectDefs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaBaseObjectDefs.cpp.s
.PHONY : src/Defs/Entity/CLuaBaseObjectDefs.cpp.s

src/Defs/Entity/CLuaEntityDefs.o: src/Defs/Entity/CLuaEntityDefs.cpp.o

.PHONY : src/Defs/Entity/CLuaEntityDefs.o

# target to build an object file
src/Defs/Entity/CLuaEntityDefs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaEntityDefs.cpp.o
.PHONY : src/Defs/Entity/CLuaEntityDefs.cpp.o

src/Defs/Entity/CLuaEntityDefs.i: src/Defs/Entity/CLuaEntityDefs.cpp.i

.PHONY : src/Defs/Entity/CLuaEntityDefs.i

# target to preprocess a source file
src/Defs/Entity/CLuaEntityDefs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaEntityDefs.cpp.i
.PHONY : src/Defs/Entity/CLuaEntityDefs.cpp.i

src/Defs/Entity/CLuaEntityDefs.s: src/Defs/Entity/CLuaEntityDefs.cpp.s

.PHONY : src/Defs/Entity/CLuaEntityDefs.s

# target to generate assembly for a file
src/Defs/Entity/CLuaEntityDefs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaEntityDefs.cpp.s
.PHONY : src/Defs/Entity/CLuaEntityDefs.cpp.s

src/Defs/Entity/CLuaVehicleDefs.o: src/Defs/Entity/CLuaVehicleDefs.cpp.o

.PHONY : src/Defs/Entity/CLuaVehicleDefs.o

# target to build an object file
src/Defs/Entity/CLuaVehicleDefs.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaVehicleDefs.cpp.o
.PHONY : src/Defs/Entity/CLuaVehicleDefs.cpp.o

src/Defs/Entity/CLuaVehicleDefs.i: src/Defs/Entity/CLuaVehicleDefs.cpp.i

.PHONY : src/Defs/Entity/CLuaVehicleDefs.i

# target to preprocess a source file
src/Defs/Entity/CLuaVehicleDefs.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaVehicleDefs.cpp.i
.PHONY : src/Defs/Entity/CLuaVehicleDefs.cpp.i

src/Defs/Entity/CLuaVehicleDefs.s: src/Defs/Entity/CLuaVehicleDefs.cpp.s

.PHONY : src/Defs/Entity/CLuaVehicleDefs.s

# target to generate assembly for a file
src/Defs/Entity/CLuaVehicleDefs.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Defs/Entity/CLuaVehicleDefs.cpp.s
.PHONY : src/Defs/Entity/CLuaVehicleDefs.cpp.s

src/Main.o: src/Main.cpp.o

.PHONY : src/Main.o

# target to build an object file
src/Main.cpp.o:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Main.cpp.o
.PHONY : src/Main.cpp.o

src/Main.i: src/Main.cpp.i

.PHONY : src/Main.i

# target to preprocess a source file
src/Main.cpp.i:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Main.cpp.i
.PHONY : src/Main.cpp.i

src/Main.s: src/Main.cpp.s

.PHONY : src/Main.s

# target to generate assembly for a file
src/Main.cpp.s:
	$(MAKE) -f CMakeFiles/lua-module.dir/build.make CMakeFiles/lua-module.dir/src/Main.cpp.s
.PHONY : src/Main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... lua-module"
	@echo "... edit_cache"
	@echo "... src/CLuaDefs2.o"
	@echo "... src/CLuaDefs2.i"
	@echo "... src/CLuaDefs2.s"
	@echo "... src/CLuaFunctionDefs.o"
	@echo "... src/CLuaFunctionDefs.i"
	@echo "... src/CLuaFunctionDefs.s"
	@echo "... src/CLuaResourceImpl.o"
	@echo "... src/CLuaResourceImpl.i"
	@echo "... src/CLuaResourceImpl.s"
	@echo "... src/CLuaScriptRuntime.o"
	@echo "... src/CLuaScriptRuntime.i"
	@echo "... src/CLuaScriptRuntime.s"
	@echo "... src/Defs/CLuaAltFuncDefs.o"
	@echo "... src/Defs/CLuaAltFuncDefs.i"
	@echo "... src/Defs/CLuaAltFuncDefs.s"
	@echo "... src/Defs/CLuaVector3Defs.o"
	@echo "... src/Defs/CLuaVector3Defs.i"
	@echo "... src/Defs/CLuaVector3Defs.s"
	@echo "... src/Defs/Entity/CLuaBaseObjectDefs.o"
	@echo "... src/Defs/Entity/CLuaBaseObjectDefs.i"
	@echo "... src/Defs/Entity/CLuaBaseObjectDefs.s"
	@echo "... src/Defs/Entity/CLuaEntityDefs.o"
	@echo "... src/Defs/Entity/CLuaEntityDefs.i"
	@echo "... src/Defs/Entity/CLuaEntityDefs.s"
	@echo "... src/Defs/Entity/CLuaVehicleDefs.o"
	@echo "... src/Defs/Entity/CLuaVehicleDefs.i"
	@echo "... src/Defs/Entity/CLuaVehicleDefs.s"
	@echo "... src/Main.o"
	@echo "... src/Main.i"
	@echo "... src/Main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

