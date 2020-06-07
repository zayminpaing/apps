#! /bin/bash
date +%D >> /home/pi/Speedtest/log.txt
/home/pi/Speedtest/speedtest -s 14059 > /home/pi/Speedtest/result.txt
cat result.txt >> /home/pi/Speedtest/log.txt
echo ------------------------------------------------------------------------------------- >> /home/pi/Speedtest/log.txt
python3 /home/pi/Speedtest/mail.py
echo The email has successfully sent
