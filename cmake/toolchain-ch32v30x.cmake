set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR RISC-V)

string(REPLACE "-gcc.exe" "-objdump.exe" CROSS_OBJDUMP "${CMAKE_C_COMPILER}")
string(REPLACE "-gcc.exe" "-objcopy.exe" CROSS_OBJCOPY "${CMAKE_C_COMPILER}")
string(REPLACE "-gcc.exe" "-size.exe" CROSS_SIZE "${CMAKE_C_COMPILER}")

set(CPU_FLAGS "-march=rv32imafc -mabi=ilp32f -msmall-data-limit=8")
set(WCH_CXX_FLAGS "-Wno-volatile -fno-rtti -fno-exceptions -fno-use-cxa-atexit")
set(COMMON_FLAGS "-fdata-sections -ffunction-sections -fmessage-length=0 -fsigned-char -fno-common -Wunused -Wuninitialized")

set(FLAGS_DEBUG "-Og -g")
set(FLAGS_RELEASE "-O2")
set(FLAGS_SIZE "-Os")

set(CMAKE_C_FLAGS "${CPU_FLAGS} ${OPT_FLAGS} ${COMMON_FLAGS}")
set(CMAKE_C_FLAGS_DEBUG ${FLAGS_DEBUG})
set(CMAKE_C_FLAGS_RELEASE ${FLAGS_RELEASE})
set(CMAKE_C_FLAGS_MINSIZEREL ${FLAGS_SIZE})
set(CMAKE_CXX_FLAGS "${CPU_FLAGS} ${WCH_CXX_FLAGS} ${OPT_FLAGS} ${COMMON_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG ${FLAGS_DEBUG})
set(CMAKE_CXX_FLAGS_RELEASE ${FLAGS_RELEASE})
set(CMAKE_CXX_FLAGS_MINSIZEREL ${FLAGS_SIZE})
SET(CMAKE_ASM_FLAGS "${CFLAGS} ${CPU_FLAGS} -x assembler-with-cpp")

set(LD_FLAGS "-nostartfiles -Wl,--gc-sections -Wl,--print-memory-usage")

set(CMAKE_EXE_LINKER_FLAGS "${CPU_FLAGS} -specs=nano.specs -specs=nosys.specs ${LD_FLAGS}" CACHE INTERNAL "") 

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(default_build_type "Debug")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
      STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()
