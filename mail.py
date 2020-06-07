from datetime import date
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib


def main():
    # create message object instance
    msg = MIMEMultipart() 
    message = getMessage()
    # setup the parameters of the message
    password = "admin123!@#"
    msg['From'] = "dxitbot@gmail.com"
    msg['To'] = "nainglay.ptn@gmail.com"
    msg['Subject'] = "Speedtest for Awba Network (" + date.today().strftime("%B %d, %Y") + ")"
    # add in the message body
    msg.attach(MIMEText(message, 'plain'))
    #create server
    server = smtplib.SMTP('smtp.gmail.com: 587')
    server.starttls()
    # Login Credentials for sending the mail
    server.login(msg['From'], password)
    # send the message via the server.
    server.sendmail(msg['From'], msg['To'], msg.as_string())
    #print(message)
    server.quit()


def getMessage():
    f = open("/home/pi/Speedtest/result.txt", "r")
    return f.read()

if __name__ == "__main__":
    main()
