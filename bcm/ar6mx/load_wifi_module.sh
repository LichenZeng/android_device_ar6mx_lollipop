#!/system/bin/sh
    # generic wireless
    insmod /system/lib/modules/compat.ko
    insmod /system/lib/modules/cfg80211.ko
    insmod /system/lib/modules/mac80211.ko

    # intel wifi
    insmod /system/lib/modules/iwlwifi.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/iwlmvm.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/iwldvm.ko
    /system/bin/busybox sleep 2
    #insmod /system/lib/modules/6lowpan_iphc.ko
    #/system/bin/busybox sleep 2

    # bluetooth
    insmod /system/lib/modules/bluetooth.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/rfcomm.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/hidp.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/bnep.ko
    /system/bin/busybox sleep 2
    insmod /system/lib/modules/btusb.ko
    /system/bin/busybox sleep 2
    hciconfig hci0 up
