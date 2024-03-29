#!/bin/bash
echo -e "
__   ___     ___ _   _ _  _______ _____
\ \ / / |   |_ _| \ | | |/ / ____| ____|
 \ V /| |    | ||  \| | ' /|  _| |  _|
  | | | |___ | || |\  | . \| |___| |___
  |_| |_____|___|_| \_|_|\_\_____|_____|\n
"
function backRunHDH() {
        select click in "${option[@]}"
        do
                runHDH
        done
}
function runInstall() {
        case $REPLY in
                1 )
                        echo "Install GIT"
                        apt-get install git
                        backRunI
                        ;;
                2 )
                        echo "Install CURL"
                        apt-get install curl
                        backRunI
                        ;;
                3 )
                        echo "Install Nginx"
                        apt-get install nginx
                        echo "Done Setup nginx"
                        nginx -v
                        systemctl start nginx
                        systemctl restart nginx
                        systemctl enable nginx
                        backRunI
                        ;;
                4 )
                        echo "Install Nodejs"
                        sleep 5
                        apt-get install nodejs
                        sleep 3
                        echo "Done Install Nodejs"
                        sleep 3
                        echo -e "Version is: `node -v`"
                        backRunI
                        ;;
                5)
                        echo "Install Npm"
                        sleep 5
                        sudo apt install npm
                        sleep 3
                        echo "Done Install Npm"
                        sleep 3
                        echo "Version Npm is: `npm -v`"
                        sleep 3
                        sudo apt install build-essential
                        echo "Done Setup Npm"
                        backRunI
                        ;;
                6 )
                        echo "Install Nvm"
                        sleep 5
                        cd /root/
                        curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
                        bash install_nvm.sh
                        source ~/.profile
                        sleep 5
                        echo "Done Install Nvm"
                        echo -e "Guide Install Version Node \n"
                        echo -e "nvm ls-remote"
                        echo -e "Install node -v:
                        nvm install <node -v>
                        nvm alias default <node -v>
                        nvm use default
                        "
                        backRunI
                        ;;
                7 )
                        echo "Install Mongodb"
                        sudo apt update
                        sudo apt install -y mongodb
                        sleep 5
                        sudo systemctl status mongodb
                        sleep 5
                        sudo systemctl start mongodb
                        sudo systemctl restart mongodb
                        sudo systemctl enable mongodb
                        sleep 5
                        echo "Done Install mongodb"
                        backRunI
                        ;;
                10 )
                        echo "GIT CLONE"
                        echo -e "Nhập user (/Home/User): \c "
                        read inputUser
                        sudo adduser $inputUser
                        cd /home/$inputUser/
                        echo -e "Nhập link GIT: \c"
                        read inputGit
                        git clone $inputGit
                        backRunI
                        ;;
                11 )
                        echo -e "Config site: \c"
                        File=/etc/nginx/conf.d/
                        cd $File
                        read catFile
                        touch $catFile
                        cat  >> $catFile
                        ;;
                12 )
                        echo "Bye"
                        backRunHDH
                        ;;
                * )
                        echo "Nhập vào số cho sẵn nhé =))"
                        backRunI
                        ;;
        esac
}
function backRunI(){
        select click1 in "${option1[@]}"
        do
                runInstall
        done
}
function runHDH (){
        case $REPLY in
                1 )
                        echo "Ubuntu:16.4"
                        #backRunHDH
                        ;;
                2 )
                        echo "Ubuntu:18.4"
                        #backRunHDH
                        PS3="Nhập vào số bạn muốn: "
                        option1=( "Install GIT" "Install CURL" "Install Nginx" "Install Nodejs" "Install Npm" "Install Nvm" "Install Mongodb" "Install Mysql" "Install Apache" "GIT CLONE" "Config Site" "Quit"  )
                        select click1 in "${option1[@]}"
                        do
                                runInstall
                        done
                        ;;
                3 )
                        echo "Centos6"
                        #backRunHDH
                        ;;
                4 )
                        echo "Centos7"
                        #backRunHDH
                        ;;
                5)
                        exit
                        ;;
                * )
                        echo "Nhập vào số có sẵn ở trên nhé =))"
                        backRunHDH
                        ;;
        esac
}

PS3="Nhập vào số bạn muốn: "
option=( "Ubuntu:16.4" "Ubuntu:18.4" "Centos6" "Centos7" "Quit" )
select click in "${option[@]}"
do
        runHDH
done
