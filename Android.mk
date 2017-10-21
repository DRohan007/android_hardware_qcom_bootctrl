ifeq ($(AB_OTA_UPDATER),true)
ifneq ($(filter msm8953 msm8996 msm8998 sdm845,$(TARGET_BOARD_PLATFORM)),)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_C_INCLUDES += hardware/libhardware/include
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/gpt-utils/inc
LOCAL_CFLAGS += -Wall -Werror
LOCAL_SHARED_LIBRARIES += liblog librecovery_updater_msm libcutils
LOCAL_SRC_FILES := boot_control.cpp
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := bootctrl.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_OWNER := qti
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
endif
endif
