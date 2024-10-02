target_sources(${TARGET_ELF} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_adc.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_bkp.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_can.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_crc.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_dac.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_dbgmcu.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_dma.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_dvp.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_eth.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_exti.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_flash.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_fsmc.c
     ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_gpio.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_i2c.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_iwdg.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_misc.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_opa.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_pwr.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_rcc.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_rng.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_rtc.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_sdio.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_spi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_tim.c
    ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_usart.c
    # ${CMAKE_CURRENT_SOURCE_DIR}/source/ch32v30x_wwdg.c
    
)

target_include_directories(${TARGET_ELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
