ifneq ($(filter AGP-T06S,$(TARGET_DEVICE)),)

LOCAL_PATH := device/AGP-T06S/AGP-T06S

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
