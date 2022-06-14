function pps
    cd /Users/noemalzieu/Documents/Projets/purplesonar;
end

function cclear
    clear and; printf '\e[3J'
end

function docs
    cd ~/Documents
end

function cx
    cd ~/Documents/ContactX/contactx
end

function cxrun
    cx; and yarn start-docker
end

function cxs
    subl ~/Documents/ContactX/contactx/contactx.sublime-workspace
end

function spx
    cd /Users/noemalzieu/Documents/Projets/spendesk/spendesk
end

function pm
    cd /Users/noemalzieu/Documents/Projets/pricemoov
end

function pms
  pm; and subl .
end

function pmproxy
    sshuttle -r bastion.pricemoov.com 172.31.0.0/16
end

function tst
    cd /Users/noemalzieu/Documents/Projets/taster
end

function asi
    cd /Users/noemalzieu/Documents/Projets/taster/asi/production_v2/lollipop; and source /Users/noemalzieu/Documents/Projets/taster/asi/venv/bin/activate.fish
end

function tsts
    cd /Users/noemalzieu/Documents/Projets/taster; and subl .
end

function agape
    cd /Users/noemalzieu/Documents/Agape/website
end

function rbenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (rbenv "sh-$command" $argv|psub)
  case '*'
    command rbenv "$command" $argv
  end
end


function nika
    cd /Users/noemalzieu/Documents/Projets/nika
end

function brow
    /usr/local/bin/brew $argv
end
