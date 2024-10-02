target_sources(${TARGET_ELF} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/source/core_riscv.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/system_ch32v30x.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/startup_ch32v30x_D8C.S
    ${CMAKE_CURRENT_SOURCE_DIR}/include/ch32v30x_conf.h
    ${CMAKE_CURRENT_SOURCE_DIR}/include/core_riscv.h
    ${CMAKE_CURRENT_SOURCE_DIR}/include/system_ch32v30x.h
)

target_include_directories(${TARGET_ELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
