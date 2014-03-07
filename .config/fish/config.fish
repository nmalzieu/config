set -Ux fish_theme robbyrussell
set -Ux LSCOLORS Gxfxcxdxbxegedabagacad

function toz
    ssh noe@toz.via.ecp.fr
end

function fullpep8
    autopep8 -a --in-place --ignore=E501 -r ./
end

function bdmv
    source /Users/noemalzieu/bdm/venv/bin/activate and cd /Users/noemalzieu/bdm/
end

function nm
    ssh -A noe@noemalzieu.com
end

function toztunnel
    ssh -D 1080 noe@toz.via.ecp.fr
end

function cdesign
    ssh root@cd.via.ecp.fr
end

function cdtunnel
    ssh -D 1080 root@cd.via.ecp.fr
end

function proxyon
    sudo networksetup -setsocksfirewallproxystate Ethernet on and sudo networksetup -setsocksfirewallproxystate Wi-Fi on
end

function proxyoff
    sudo networksetup -setsocksfirewallproxystate Ethernet off and sudo networksetup -setsocksfirewallproxystate Wi-Fi off
end

function updatedb
    cd / and sudo /usr/libexec/locate.updatedb
end

function pdflatex
    pdflatex -shell-escape
end

function sublime
    /Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2
end

function tcw
    ssh -p 92 -i ~/.ssh/id_dsa.pub equarlat@thecampuswave.com
end

function bookin
    cd ~/Sites/Projets/bookin/bookin
end

function bdm
    ssh bdm@dowie.via.ecp.fr
end

function v4
    source ~/.venv/work4/bin/activate
end

function w4
    v4 and cd ~/work4/
end

function hf
    source ~/.venv/hackfest/bin/activate
end

function vwy
    source ~/.venv/wyat/bin/activate
end

function gowy
    cd ~/Documents/Projets/wyatdir/wyat
end

function wy
    vwy and gowy
end

function lab3
    ssh -D 1080 -A nmalzieu@lab3.work4labs.com
end

function ortho
    ssh produitsq@ftp.ortho-company.com
end

function biscotte
    ssh noe@biscotte.via.ecp.fr
end

function rpi
    ssh -A pi@raspberrypi.local
end

function rpir
    ssh -A pi@citegg.no-ip.biz
end

function ftpdir
    python -m SimpleHTTPServer
end

function booth
    cd ~/ggbooth/ and source venv/ggbooth/bin/activate
end

function pgstart
    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
end

function pgstop
    pg_ctl -D /usr/local/var/postgres stop -s -m fast
end


# Loading oh my fish config

set fish_path $HOME/.oh-my-fish
. $fish_path/oh-my-fish.fish

