#! /bin/bash
PREFIX="bck_"
DATE="$PREFIX$(date +%Y%m%d)"
FILE="$(ls /home/pi/Desktop/ZMP/HDB/AGGREGATE_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo AGGREGATE_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/AGGREGATE_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/AGGREGATE_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,AGGREGATE_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/AGGREGATE_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,AGGREGATE_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/AGGREGATE_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,AGGREGATE_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,AGGREGATE_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/ASC_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo ASC_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/ASC_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/ASC_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,ASC_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/ASC_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,ASC_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/ASC_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,ASC_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,ASC_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/AWBA_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo AWBA_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/AWBA_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/AWBA_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,AWBA_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/AWBA_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,AWBA_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/AWBA_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,AWBA_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,AWBA_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/EVO_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo EVO_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/EVO_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/EVO_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,EVO_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/EVO_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,EVO_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/EVO_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,EVO_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,EVO_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/MAI_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo MAI_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/MAI_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/MAI_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,MAI_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MAI_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,MAI_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MAI_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,MAI_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,MAI_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/MKTK_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo MKTK_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/MKTK_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/MKTK_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,MKTK_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MKTK_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,MKTK_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MKTK_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,MKTK_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,MKTK_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/MSCN_LIVE | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo MSCN_LIVE >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/MSCN_LIVE/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/MSCN_LIVE/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,MSCN_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MSCN_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,MSCN_LIVE,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/MSCN_LIVE/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,MSCN_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,MSCN_LIVE,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/PAHTAMA | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo PAHTAMA >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/PAHTAMA/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/PAHTAMA/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,PAHTAMA,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PAHTAMA/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,PAHTAMA,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PAHTAMA/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,PAHTAMA,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,PAHTAMA,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo PITI_PYAE_ZONE_COMPANY >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/PITI_PYAE_ZONE_COMPANY/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,PITI_PYAE_ZONE_COMPANY,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,PITI_PYAE_ZONE_COMPANY,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/PITI_PYAE_ZONE_COMPANY/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,PITI_PYAE_ZONE_COMPANY,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,PITI_PYAE_ZONE_COMPANY,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/UAT_AWBA | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo UAT_AWBA >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/UAT_AWBA/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/UAT_AWBA
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,UAT_AWBA,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_AWBA/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,UAT_AWBA,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_AWBA/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,UAT_AWBA,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,UAT_AWBA,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/UAT_MAI | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo UAT_MAI >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/UAT_MAI/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,UAT_MAI,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,UAT_MAI,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/UAT_MAI/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,UAT_MAI,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,UAT_MAI,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/VILLAGE_LINE_V2 | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo VILLAGE_LINE_V2 >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/VILLAGE_LINE_V2/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/VILLAGE_LINE_V2/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,VILLAGE_LINE_V2,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/VILLAGE_LINE_V2/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,VILLAGE_LINE_V2,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/VILLAGE_LINE_V2/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,VILLAGE_LINE_V2,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,VILLAGE_LINE_V2,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
FILE="$(ls /home/pi/Desktop/ZMP/HDB/WSR_LIVE_FINAL | grep "$DATE")"
if [[ "$FILE" == *"$DATE"* ]]; then
    echo WSR_LIVE_FINAL >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo -n Start Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    cp -r /home/pi/Desktop/ZMP/HDB/WSR_LIVE_FINAL/"$FILE" /home/pi/Desktop/ZMP/HDB_HUAWEI/WSR_LIVE_FINAL/
    echo -n End Time =  >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    date +%H%M%S >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo >> /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/duration.txt
    echo Success,WSR_LIVE_FINAL,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/WSR_LIVE_FINAL/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Success,WSR_LIVE_FINAL,$(date),$(ls -l --block-size=MB /home/pi/Desktop/ZMP/HDB/WSR_LIVE_FINAL/"$FILE" | grep "total") >> /home/pi/Desktop/ZMP/HDB/temp_success.txt
else
    echo Failed,WSR_LIVE_FINAL,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_log.txt
    echo Failed,WSR_LIVE_FINAL,$(date) >> /home/pi/Desktop/ZMP/HDB/temp_failed.txt
fi
mkdir /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)
cp /home/pi/Desktop/ZMP/HDB/temp_log.txt /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/
cp /home/pi/Desktop/ZMP/HDB/temp_success.txt /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/
cp /home/pi/Desktop/ZMP/HDB/temp_failed.txt /home/pi/Desktop/ZMP/HDB_HUAWEI/LOG/$(date +%Y%m%d)/
