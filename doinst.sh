#!/bin/sh

fw="rtw8851b_fw.bin rtw8852a_fw.bin rtw8852b_fw-1.bin rtw8852bt_fw.bin rtw8852c_fw-1.bin rtw8922a_fw-3.bin"

for fws in $fw; do
    if [ -f "/lib/firmware/$fws" ]; then
        rm -f "/lib/firmware/$fws"
    fi

    sudo ln -s "/usr/src/rtw89-firmware/$fws" "/lib/firmware/$fws"
done
