#ifndef _MAIN_H_
#define _MAIN_H_
#ifdef __cplusplus
 extern "C" {
#endif

#define SPI1_SCK_Pin  GPIO_Pin_13 //
#define SPI1_MISO_Pin GPIO_Pin_14 //
#define SPI1_MOSI_Pin GPIO_Pin_15 //
#define LCD_CS_Pin    GPIO_Pin_12 //
#define LCD_BL_Pin    GPIO_Pin_0  //------------------>GPIOB
#define LCD_RST_Pin   GPIO_Pin_1  //
#define LCD_DC_Pin    GPIO_Pin_9  //
#define TP_BUSY_Pin   GPIO_Pin_8  //
#define SD_CS_Pin     GPIO_Pin_5  //______________________
#define TP_CS_Pin     GPIO_Pin_6  //----> GPIOA
#define TP_IRQ_Pin    GPIO_Pin_7 



//SPI
#define SPI1_CLK_0		GPIO_WriteBit(GPIOB, SPI1_SCK_Pin, Bit_RESET)
#define SPI1_CLK_1		GPIO_WriteBit(GPIOB, SPI1_SCK_Pin, Bit_SET)

#define GET_SPI1_MISO   GPIO_WriteBit(GPIOB, SPI1_MISO_Pin)

#define SPI1_MOSI_0		GPIO_WriteBit(GPIOB, SPI1_MOSI_Pin, Bit_RESET)
#define SPI1_MOSI_1		GPIO_WriteBit(GPIOB, SPI1_MOSI_Pin, Bit_SET)

//LCD
#define LCD_CS_0		GPIO_WriteBit(GPIOB, LCD_CS_Pin, Bit_RESET)
#define LCD_CS_1		GPIO_WriteBit(GPIOB, LCD_CS_Pin, Bit_SET)

#define LCD_RST_0		GPIO_WriteBit(GPIOB, LCD_RST_Pin, Bit_RESET)
#define LCD_RST_1		GPIO_WriteBit(GPIOB, LCD_RST_Pin, Bit_SET)

#define LCD_DC_0		GPIO_WriteBit(GPIOB, LCD_DC_Pin, Bit_RESET)
#define LCD_DC_1		GPIO_WriteBit(GPIOB, LCD_DC_Pin, Bit_SET)




//*******************************Functions*******************************///

void PWM_SetValue(uint16_t value);
void SPI_conf(void);
void GPIO_conf(void);
void TIM_conf(void);

#ifdef __cplusplus
  }
#endif
#endif