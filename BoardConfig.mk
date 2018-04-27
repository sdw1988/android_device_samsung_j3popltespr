USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/j3popltespr/BoardConfigVendor.mk

TARGET_ARCH := arm

# todo: cross-compilter

BOARD_USES_GENERIC_AUDIO := true

TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true

#TARGET_NO_BOOTLOADER := true	does download mode count as bootloader
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

TARGET_BOARD_PLATFORM := msm8937

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := msm8937
TARGET_BOOTLOADER_BOARD_NAME := j3popltespr

TARGET_USES_CSVT := true

#	BOARD_KERNEL_CMDLINE console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
#	BOARD_KERNEL_BASE 80000000
#	BOARD_NAME SPRPI28A000KU
#	BOARD_PAGE_SIZE 2048
#	BOARD_HASH_TYPE sha1
#	BOARD_KERNEL_OFFSET 00008000
#	BOARD_RAMDISK_OFFSET 02000000
#	BOARD_SECOND_OFFSET 00f00000
#	BOARD_TAGS_OFFSET 01e00000
#	BOARD_DT_SIZE 1294336

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048

#BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_SECOND_OFFSET := 0x01e00000
BOARD_KERNAL_TAGS_OFFSET := 0x01E00000

#BOARD_KERNEL_SEPARATED_DT := true

#TARGET_USE_MDTP := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# fix this up by examining /proc/mtd on a running device
# BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3850371072
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016


TARGET_PREBUILT_KERNEL := device/samsung/j3popltespr/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
