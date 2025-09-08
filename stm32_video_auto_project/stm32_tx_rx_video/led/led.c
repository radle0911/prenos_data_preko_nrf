#include"led.h"
#include "stm32f4xx.h"
#include <stdint.h>



void initGPIOD_LED(void){
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0x55000000;
  GPIOD->OTYPER &= ~0xF000;
  GPIOD->OSPEEDR |= 0xFF000000;
  GPIOD->PUPDR &= ~0xFF000000;
}

void initPWM()
{
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0xAA000000; // AFR mode
  GPIOD->OTYPER &= ~0xF000;
  GPIOD->OSPEEDR |= 0xFF000000;
  GPIOD->PUPDR &= ~0xFF000000;

  GPIOD->AFR[1] |= 0x22220000;

  // potrebno je sada TIM4(16bit) inicijalizirati i pwm omoguciti
  {
    RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;

    TIM4->PSC = 84 - 1;
    TIM4->ARR = 1000;   // 1ms
    TIM4->CR1 |= TIM_CR1_ARPE | TIM_CR1_URS;
    TIM4->CR1 &= ~(TIM_CR1_CMS | TIM_CR1_DIR);

    TIM4->CNT = 0x0000;

    TIM4->CCMR1 |= (TIM_CCMR1_OC1PE | TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2);
    TIM4->CCMR1 |= (TIM_CCMR1_OC2PE | TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2M_2);
    TIM4->CCMR2 |= (TIM_CCMR2_OC3PE | TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3M_2);
    TIM4->CCMR2 |= (TIM_CCMR2_OC4PE | TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4M_2);

    // sa ovim cemo direktno vrsiti poredjenje i pojacavati pwm
    TIM4->CCR1 = 0x0000;
    TIM4->CCR2 = 0x0000;
    TIM4->CCR3 = 0x0000;
    TIM4->CCR4 = 0x0000;


    TIM4->CCER &= ~(TIM_CCER_CC1P | TIM_CCER_CC2P |TIM_CCER_CC3P |TIM_CCER_CC4P);

    TIM4->EGR |= TIM_EGR_UG;

    TIM4->CCER |= TIM_CCER_CC1E | TIM_CCER_CC2E |TIM_CCER_CC3E |TIM_CCER_CC4E;
    TIM4->CR1 |= TIM_CR1_CEN;   // enable (start) TIM4 counter
  }
}

