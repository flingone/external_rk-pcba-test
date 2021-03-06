#!/bin/bash
echo res.sh $1 $2 $3
TARGET_PRODUCT=$1
PRODUCT_OUT=$2
TARGET_BOARD_PLATFORM=$3
TARGET_COMMON=common
if [ $TARGET_BOARD_PLATFORM = "rk30xx" ] || [ $TARGET_BOARD_PLATFORM = "rk30xxb" ] || [ $TARGET_BOARD_PLATFORM = "rk3188" ] || [ $TARGET_BOARD_PLATFORM = "rk3028" ]; then
    MODULE="modules_smp"
elif [ $TARGET_BOARD_PLATFORM = "rk2928" ]; then
    MODULE="modules"
fi
echo MODULE $MODULE
if [ ! -e "device/rockchip/$TARGET_COMMON/app" ] ; then
    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8188eu.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8188eu.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8188eu.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8188eu.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8192cu.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8192cu.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8192cu.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8192cu.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rda5890.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rda5890.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rda5890.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rda5890.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rt5370sta.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rt5370sta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rt5370sta.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rt5370sta.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/mt7601sta.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/mt7601sta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/mtprealloc7601Usta.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/mtprealloc7601Usta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8723au.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8723au.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/8723as.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/8723as.ko $PRODUCT_OUT/recovery/root/res/
    fi
    
    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/mt5931.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/mt5931.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rkwifi.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rkwifi.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/rkwifi.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/rkwifi.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi
    
    if [ -e "device/rockchip/$TARGET_PRODUCT/bluetooth/lib/modules_smp/rtk_btusb.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/lib/modules_smp/rtk_btusb.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/wlan.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/wlan.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/wlan.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/wlan.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/system/lib/" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/lib/
    mkdir $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi
	
    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/esp8089.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/esp8089.ko $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/init_data.conf" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/init_data.conf  $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi
	
    if [ -e "device/rockchip/$TARGET_PRODUCT/wifi/lib/esp_init_data.bin" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/wifi/lib/esp_init_data.bin  $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/firmware" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/firmware/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/etc/firmware" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/etc/firmware/
    fi
    
    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/
    fi

    if [ -e "external/wlan_loader/firmware/" ] ; then
    cp external/wlan_loader/firmware/ $PRODUCT_OUT/recovery/root/system/etc/ -a
    fi
	
    if [ -e "external/wlan_loader/firmware/WIFI_RAM_CODE" ] ; then
    cp external/wlan_loader/firmware/WIFI_RAM_CODE $PRODUCT_OUT/recovery/root/etc/firmware/WIFI_RAM_CODE
    fi 

    if [ -e "device/rockchip/$TARGET_PRODUCT/proprietary/libipp/rk29-ipp.ko" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/proprietary/libipp/rk29-ipp.ko $PRODUCT_OUT/recovery/root/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/proprietary/libipp/rk29-ipp.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/proprietary/libipp/rk29-ipp.ko.3.0.36+ $PRODUCT_OUT/recovery/root/
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/bluetooth/pcba/system/bin" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/pcba/system/bin/ $PRODUCT_OUT/recovery/root/system/ -a
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/bluetooth/pcba/system/etc" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/pcba/system/etc/ $PRODUCT_OUT/recovery/root/system/ -a
    fi
    
    if [ -e "device/rockchip/$TARGET_PRODUCT/bluetooth/realtek/bt/firmware/rtl8723au" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/realtek/bt/firmware/rtl8723au/rtk8723* $PRODUCT_OUT/recovery/root/system/etc/firmware
    fi

    if [ -e "device/rockchip/$TARGET_PRODUCT/bluetooth/realtek/bt/firmware/rtl8723as" ] ; then
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/realtek/bt/firmware/rtl8723as/rtl8723a_fw $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/rtlbt_fw
    cp device/rockchip/$TARGET_PRODUCT/bluetooth/realtek/bt/firmware/rtl8723as/rtl8723a_config $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/rtlbt_config
    fi

else
    ##################################### WIFI MODULES #####################################################
    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8188eu.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8188eu.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8188eu.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8188eu.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8192cu.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8192cu.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8192cu.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8192cu.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rda5890.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rda5890.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rda5890.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rda5890.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rt5370sta.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rt5370sta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rt5370sta.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rt5370sta.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mt7601sta.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mt7601sta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mtprealloc7601Usta.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mtprealloc7601Usta.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8723au.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8723au.ko $PRODUCT_OUT/recovery/root/res/
	  fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8723as.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/8723as.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mt5931.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/mt5931.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rkwifi.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rkwifi.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rkwifi.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/rkwifi.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/bluetooth/lib/modules_smp/rtk_btusb.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/bluetooth/lib/modules_smp/rtk_btusb.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/wlan.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/wlan.ko $PRODUCT_OUT/recovery/root/res/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/wlan.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/wlan.ko.3.0.36+ $PRODUCT_OUT/recovery/root/res/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/system/lib/" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/lib/
    mkdir $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/esp8089.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/$MODULE/esp8089.ko $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/init_data.conf" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/init_data.conf  $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/wifi/lib/esp_init_data.bin" ] ; then
    cp device/rockchip/$TARGET_COMMON/wifi/lib/esp_init_data.bin  $PRODUCT_OUT/recovery/root/system/lib/modules/
    fi

    #########################################################################################################
    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/firmware" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/firmware/
    fi

    if [ ! -e "$PRODUCT_OUT/recovery/root/etc/firmware" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/etc/firmware/
    fi
    
    if [ ! -e "$PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt" ] ; then
    mkdir $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/
    fi

    if [ -e "external/wlan_loader/firmware/" ] ; then
    cp external/wlan_loader/firmware/ $PRODUCT_OUT/recovery/root/system/etc/ -a
    fi 

    if [ -e "external/wlan_loader/firmware/WIFI_RAM_CODE" ] ; then
    cp external/wlan_loader/firmware/WIFI_RAM_CODE $PRODUCT_OUT/recovery/root/etc/firmware/WIFI_RAM_CODE
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/ipp/lib/rk29-ipp.ko" ] ; then
    cp device/rockchip/$TARGET_COMMON/ipp/lib/rk29-ipp.ko $PRODUCT_OUT/recovery/root/
    fi

    if [ -e "device/rockchip/$TARGET_COMMON/ipp/lib/rk29-ipp.ko.3.0.36+" ] ; then
    cp device/rockchip/$TARGET_COMMON/ipp/lib/rk29-ipp.ko.3.0.36+ $PRODUCT_OUT/recovery/root/
    fi

    if [ -e "device/rockchip/common/bluetooth/pcba/system/bin" ] ; then
    cp device/rockchip/common/bluetooth/pcba/system/bin/ $PRODUCT_OUT/recovery/root/system/ -a
    fi

    if [ -e "device/rockchip/common/bluetooth/pcba/system/etc" ] ; then
    cp device/rockchip/common/bluetooth/pcba/system/etc/ $PRODUCT_OUT/recovery/root/system/ -a
    fi
    if [ -e "device/rockchip/common/bluetooth/realtek/bt/firmware/rtl8723au" ] ; then
    cp device/rockchip/common/bluetooth/realtek/bt/firmware/rtl8723au/rtk8723* $PRODUCT_OUT/recovery/root/system/etc/firmware
    fi

    if [ -e "device/rockchip/common/bluetooth/realtek/bt/firmware/rtl8723as" ] ; then
    cp device/rockchip/common/bluetooth/realtek/bt/firmware/rtl8723as/rtl8723a_fw $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/rtlbt_fw
    cp device/rockchip/common/bluetooth/realtek/bt/firmware/rtl8723as/rtl8723a_config $PRODUCT_OUT/recovery/root/system/etc/firmware/rtlbt/rtlbt_config
    fi
fi
