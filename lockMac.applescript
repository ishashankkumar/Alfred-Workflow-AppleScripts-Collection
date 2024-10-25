# Lock the Macbook with a delay of 1 second.
display notification "Locking Mac..." with title "System Lock"
delay 1
do shell script "pmset displaysleepnow"
