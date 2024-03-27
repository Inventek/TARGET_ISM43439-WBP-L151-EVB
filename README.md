# ISM43439-WBP-L151-EVB BSP

## Overview

The ISM43439-WBP-L151-EVB Evaluation Kit enables you to evaluate and develop applications using PSoC™ 62 (CY8C6248FNI-S2D43T) MCU. The evaluation kit features a AIROC™ CYW43439 Wi-Fi/Bluetooth combo device. It comes with on-board debugger/programmer with KitProg3, Infineon 512-Mb(S25FL512SAGMFI010) Quad-SPI NOR flash.     
**Note:**
ISM43439-WBP-L151-EVB is the board support package for the ISM43439-WBP-L151 SIP which has a PSoC™ 62 (CY8C6248FNI-S2D43T) in combination with the CYW43439 radio and supports PSoC™ 6 MCU examples and Wi-Fi/Bluetooth connectivity examples.



To use code from the BSP, simply include a reference to `cybsp.h`.

## Features

### Kit Features:

* Support of up to 1MB Flash and 512KB SRAM
* Delivers dual-cores, with a 150-MHz Arm® Cortex®-M4 as the primary application processor and a 100-MHz Arm® Cortex®-M0+ as the secondary processor for low-power operations.
* Supports Full-Speed USB, a Quad SPI interface, 13 serial communication blocks, 7 programmable analog blocks and 56 programmable digital blocks.

### Kit Contents:

* ISM43439-WBP-L151-EVB™ Evaluation Board (PSoC™ CY8C6248FNI-S2D43T MCU + CYW43439 Wi-Fi/Bluetooth Radio)
* USB Type-A to Micro-B cable
* Quick start guide

## BSP Configuration

The BSP has a few hooks that allow its behavior to be configured. Some of these items are enabled by default while others must be explicitly enabled. Items enabled by default are specified in the ISM43439-WBP-L151-EVB.mk file. The items that are enabled can be changed by creating a custom BSP or by editing the application makefile.

Components:
* Device specific category reference (e.g.: CAT1) - This component, enabled by default, pulls in any device specific code for this board.

Defines:
* CYBSP_WIFI_CAPABLE - This define, disabled by default, causes the BSP to initialize the interface to an onboard wireless chip if it has one.
* CY_USING_HAL - This define, enabled by default, specifies that the HAL is intended to be used by the application. This will cause the BSP to include the applicable header file and to initialize the system level drivers.
* CYBSP_CUSTOM_SYSCLK_PM_CALLBACK - This define, disabled by default, causes the BSP to skip registering its default SysClk Power Management callback, if any, and instead to invoke the application-defined function `cybsp_register_custom_sysclk_pm_callback` to register an application-specific callback.

### Clock Configuration

| Clock    | Source    | Output Frequency |
|----------|-----------|------------------|
| FLL      | IMO       | 100.0 MHz        |
| PLL      | IMO       | 48.0 MHz         |
| CLK_HF0  | CLK_PATH0 | 100 MHz          |

### Power Configuration

* System Active Power Mode: LP
* System Idle Power Mode: Deep Sleep
* VDDA Voltage: 3300 mV
* VDDD Voltage: 3300 mV

See the [BSP Setttings][settings] for additional board specific configuration settings.

## API Reference Manual

The ISM43439-WBP-L151-EVB Board Support Package provides a set of APIs to configure, initialize and use the board resources.

See the [BSP API Reference Manual][api] for the complete list of the provided interfaces.

## More information
* [ISM43439-WBP-L151-EVB BSP API Reference Manual][api]
* [ISM43439-WBP-L151-EVB Documentation](https://www.inventeksys.com/iwin/wp-content/uploads/ISM43439-WBP-L151-Functional-Specification-DOC-DS-20112.pdf)
* [Inventek Systems](http://www.inventeksys.com/)
* [Cypress Semiconductor, an Infineon Technologies Company](http://www.cypress.com)
* [Infineon GitHub](https://github.com/infineon)
* [ModusToolbox™](https://www.cypress.com/products/modustoolbox-software-environment)

[api]: https://infineon.github.io/TARGET_ISM43439-WBP-L151-EVB/html/modules.html
[settings]: https://infineon.github.io/TARGET_ISM43439-WBP-L151-EVB/html/md_bsp_settings.html

---
© Inventek Systems LLC, 2006-2024.