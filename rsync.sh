
#!/bin/bash
echo -e "
__   ___     ___ _   _ _  _______ _____
\ \ / / |   |_ _| \ | | |/ / ____| ____|
 \ V /| |    | ||  \| | ' /|  _| |  _|
  | | | |___ | || |\  | . \| |___| |___
  |_| |_____|___|_| \_|_|\_\_____|_____|\n
"
function backselect() {
select clickchon in "${option[@]}"
do
        runEsTestfun
done
}
function runEsTestfun() {
case $REPLY in
        1 )
                echo -e "Chuyển Site En.testfun.net sang In-us.testfun.net và En-in-us.bestuiz.net \n"
                rsync -avzebr --delete /home/testfun/domains/en.testfun.net/public_html/data/fb/ /home/testfun/domains/in.testfun.net/public_html/data/fb/
                rsync -avzebr --delete /home/testfun/domains/en.testfun.net/public_html/data/fb/ /home/testfun/domains/us.testfun.net/public_html/data/fb/
                rsync -avzebr --delete /home/testfun/domains/en.testfun.net/public_html/data/fb/ /home/bestquiz/domains/en.bestquiz.net/public_html/data/fb/
                rsync -avzebr --delete /home/testfun/domains/en.testfun.net/public_html/data/fb/ /home/bestquiz/domains/in.bestquiz.net/public_html/data/fb/
                rsync -avzebr --delete /home/testfun/domains/en.testfun.net/public_html/data/fb/ /home/bestquiz/domains/us.bestquiz.net/public_html/data/fb/
                echo -e "Done RSYNC: \n"
                backselect
                ;;
        2 )
                echo -e "Chuyển Br.testfun.net sang Br.testfun.net \n"
                rsync -avzebr --delete /home/testfun/domains/br.testfun.net/public_html/data/fb/ /home/bestquiz/domains/br.bestquiz.net/public_html/data/fb/
                echo -e "Done RSYNC BR: \n"
                backselect
                ;;
        3 )
                echo -e "Chuyển từ Fr.testfun.net sang Fr.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/fr.testfun.net/public_html/data/fb/ /home/bestquiz/domains/fr.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC BR: \n"
                backselect
                ;;
        4 )
                echo -e "Chuyển từ Kr.testfun.net sang Kr.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/kr.testfun.net/public_html/data/fb/ /home/bestquiz/domains/kr.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC KR: \n"
                backselect
                ;;
        5 )
                echo -e "Chuyển từ Ru.testfun.net sang Ru.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/ru.testfun.net/public_html/data/fb/ /home/bestquiz/domains/ru.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC RU: \n"
                backselect
                ;;
        6 )
                echo -e "Chuyển từ Tr.testfun.net sang Tr.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/tr.testfun.net/public_html/data/fb/ /home/bestquiz/domains/tr.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC TR: \n"
                backselect
                ;;
        7 )
                echo -e "Chuyển từ De.testfun.net sang De.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/de.testfun.net/public_html/data/fb/ /home/bestquiz/domains/de.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC DE: \n"
                backselect
                ;;
        8 )
                echo -e "Chuyển từ Es.testfun.net sang Es.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/es.testfun.net/public_html/data/fb/ /home/bestquiz/domains/es.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC ES: \n"
                backselect
                ;;
        9 )
                echo -e "Chuyển từ Id.testfun.net sang Id.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/id.testfun.net/public_html/data/fb/ /home/bestquiz/domains/id.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC ID: \n"
                backselect
                ;;
        10 )
                echo -e "Chuyển từ It.testfun.net sang It.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/it.testfun.net/public_html/data/fb/ /home/bestquiz/domains/it.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC IT: \n"
                backselect
                ;;
        11 )
                echo -e "Chuyển từ Ph.testfun.net sang Ph.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/ph.testfun.net/public_html/data/fb/ /home/bestquiz/domains/ph.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC PH: \n"
                backselect
                ;;
        12 )
                echo -e "Chuyển từ Th.testfun.net sang Th.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/th.testfun.net/public_html/data/fb/ /home/bestquiz/domains/th.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC TH: \n"
                backselect
                ;;
        13 )
                echo -e "Chuyển từ Tw.testfun.net sang Tw.bestquiz.net"
                rsync -avzebr --delete /home/testfun/domains/tw.testfun.net/public_html/data/fb/ /home/bestquiz/domains/tw.bestquiz.net/public_html/data/fb/
                echo -e "DONE RSYNC TW: \n"
                backselect
                ;;

        14 )
                exit
                ;;
        * )
                echo "Nhập vào số có sẵn ở trên nhé :))"
                ;;

esac
}
PS3="Nhập vào số bạn muốn: "
option=( "En-In-Us-T&B" "BR" "FR" "KR" "RU" "TR" "DE" "ES" "ID" "IT" "PH" "TH" "TW" "Quit" )
select clickchon in "${option[@]}"
 do
        runEsTestfun
 done
