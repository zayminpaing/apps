#! /bin/bash
PREFIX="bck_"
DATE="$PREFIX$(date +%Y%m%d)"
FILE="$(ls /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    cp -r /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/PITI_PYAE_ZONE_COMPANY/
    echo Success,PITI_PYAE_ZONE_COMPANY,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,PITI_PYAE_ZONE_COMPANY,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,PITI_PYAE_ZONE_COMPANY,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,PITI_PYAE_ZONE_COMPANY,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/UAT_MAI | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    cp -r /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/UAT_MAI/
    echo Success,UAT_MAI,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,UAT_MAI,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,UAT_MAI,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,UAT_MAI,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi