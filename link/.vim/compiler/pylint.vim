" Compiler for cmake, set of instructions to compile project using cmake

if exists("current_compiler")
  finish
endif
let current_compiler = "cmake"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet efm=%f:%l:%c:%m
CompilerSet makeprg=pylint3
