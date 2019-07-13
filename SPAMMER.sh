#!/bin/bash

troll(){
    clear


    figlet SPAMMER | lolcat
    sleep 0.05
    echo "note = script ini berisi 2 bahasa karna admin ngantuk pas bikin ini script" | lolcat -a -d 10
    sleep 0.05
    echo " <==============================>" | lolcat -a -d 20
    sleep 0.03
    echo " <coded by : mr.vurt.          =>" | lolcat -a -d 20
    sleep 0.03
    echo " <contac : 081223047245.       =>" | lolcat -a -d 20
    sleep 0.03
    echo " <Thanks To Use This Program^^ =>" | lolcat -a -d 20
    sleep 0.03
    echo " <==============================>" | lolcat -a -d 20
    sleep 0.03
}
load(){
    echo -e "\n "
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://vurtoz.com/api/miaori.php?request=sms)
get_call=$(curl -s http://vurtoz.com/api/miaori.php?request=call)
mulai (){
    echo "Use Spammer Again??"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Thanks for use tools spammer"
    fi
}
#spam
spam(){
    clear
    figlet Spammer | lolcat
    echo
    echo "<===================================>" | lolcat -a -d 10
    echo "<1> Spam SMS" | lolcat -a -d 10
    echo "<2> Spam Telp" | lolcat -a -d 10
    echo "<3> Close spammer" | lolcat -a -d 10
    echo
    echo "<===================================>" | lolcat -a -d 10
    echo "choose a number"
    sleep 0.08
    read -p "SPAMMER =>" bro

    if [ $bro = "1" ]; then
            echo "Troll Spam SMS"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Berapa sms yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
		    clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Dont Close Application, Wait For A Few Secon"
                  echo "========================================"
                  target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
		  CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo " Sms Sudah Terkirim^^ "
                  echo " Thanks To Use This Project"
                  echo "<========================================>"
            else
                  echo Invalid , Please Try Again Dude
            fi
        mulai
    elif [ $bro = "2" ]; then
            echo "Spam Call"
            #function spam
            echo
            echo "Input Phone Number"
            echo contoh 0812345678
            read target # masukin no telp
            echo
	    echo "<=======================================>"
            echo "Use API Grab/Toped?"
            echo "<1> GRAB"
            echo "<2> TOPED"
            echo "1/2"
	    echo "<=======================================>"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Dont Close Application, Wait For A Few Secon"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo " Spam Call Sudah Terkirim^^ "
                  echo " Thanks To Use This Project"
                  echo "<========================================>"
            else
                  echo Invalid , Please Try Again Dude
            fi
        mulai
    elif [ $bro = "3" ]; then
        echo "Thanks to use this  project"
        close
    else
        clear
        echo "Invalid"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo "nick name_>"
read nick
clear
troll
echo Welcome^^ $nick ":)"
echo
echo "Use spamer?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
