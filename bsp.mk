################################################################################
# \file bsp.mk
#
# \brief
# Define the ISM43439-WBP-L151-EVB target.
#
################################################################################
# \copyright
# Copyright 2024 Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Any additional components to apply when using this board.
# Use a default CM0+ image (CM0P_SLEEP). This can be swapped for a different
# pre-built image or removed if custom built project.
BSP_COMPONENTS:=CM0P_SLEEP

# Any additional defines to apply when using this board.
BSP_DEFINES:=CY_USING_HAL CYBSP_WIFI_WL_HOSTWAKE_DRIVE_MODE=CYHAL_GPIO_DRIVE_PULLUP CYBSP_WIFI_WL_HOSTWAKE_INIT_STATE=WHD_TRUE CYBSP_WIFI_HOST_WAKE_IRQ_EVENT=CYHAL_GPIO_IRQ_FALL

################################################################################
# ALL ITEMS BELOW THIS POINT ARE AUTO GENERATED BY THE BSP ASSISTANT TOOL.
# DO NOT MODIFY DIRECTLY. CHANGES SHOULD BE MADE THROUGH THE BSP ASSISTANT.
################################################################################

# Board device selection. MPN_LIST tracks what was selected in the BSP Assistant
# All other variables are derived by BSP Assistant based on the MPN_LIST.
MPN_LIST:=ISM43439-WBP-L151
DEVICE:=CY8C6248FNI-S2D43
ADDITIONAL_DEVICES:=CYW43439KUBG
DEVICE_COMPONENTS:=43439 CAT1 CAT1A HCI-UART ISM43439-WBP-L151 PSOC6_02 WIFI_INTERFACE_SDIO
DEVICE_CY8C6248FNI-S2D43_CORES:=CORE_NAME_CM0P_0 CORE_NAME_CM4_0
DEVICE_CY8C6248FNI-S2D43_DIE:=PSoC6A2M
DEVICE_CY8C6248FNI-S2D43_FEATURES:=CM4_0_FPU_PRESENT
DEVICE_CY8C6248FNI-S2D43_FLASH_KB:=1024
DEVICE_CY8C6248FNI-S2D43_SRAM_KB:=512
DEVICE_CYW43439KUBG_DIE:=4343A2
DEVICE_CYW43439KUBG_FLASH_KB:=0
DEVICE_CYW43439KUBG_SRAM_KB:=512
DEVICE_LIST:=CY8C6248FNI-S2D43 CYW43439KUBG
DEVICE_TOOL_IDS:=bsp-assistant bt-configurator capsense-configurator capsense-tuner device-configurator dfuh-tool library-manager lin-configurator ml-configurator motor-suite-gui project-creator qspi-configurator seglcd-configurator smartio-configurator usbdev-configurator
RECIPE_DIR:=$(SEARCH_recipe-make-cat1a)
