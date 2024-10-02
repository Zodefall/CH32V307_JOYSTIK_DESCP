target_sources(${TARGET_ELF} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/syscalls.c
    ${CMAKE_CURRENT_SOURCE_DIR}/ch32v30x_it.c
    ${CMAKE_CURRENT_SOURCE_DIR}/LCD/LCD_Driver.c
    ${CMAKE_CURRENT_SOURCE_DIR}/USB_WCH/usbd_compostie_km.c
    ${CMAKE_CURRENT_SOURCE_DIR}/USB_WCH/ch32v30x_usbfs_device.c
    ${CMAKE_CURRENT_SOURCE_DIR}/USB_WCH/usbd_desc.c

    ${CMAKE_CURRENT_SOURCE_DIR}/debug.c
    

)
target_include_directories(${TARGET_ELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/LCD)
target_include_directories(${TARGET_ELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/USB_WCH)