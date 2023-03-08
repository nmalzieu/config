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

function cairenv
    source ~/.cairo_venv/bin/activate.fish
end

function starknet-dump --argument statename
    if not test -n "$statename"
        echo "statename is required";
    else
        curl -X POST http://127.0.0.1:5050/dump -d "{ \"path\": \"/Users/noemalzieu/.starknet-devnet/$statename\" }" -H "Content-Type: application/json"
    end
end

function starknet-load --argument statename
    if not test -n "$statename"
        echo "statename is required";
    else
        curl -X POST http://127.0.0.1:5050/load -d "{ \"path\": \"/Users/noemalzieu/.starknet-devnet/$statename\" }" -H "Content-Type: application/json"
    end
end

function starknet-dvnt
    cd /Users/noemalzieu/Documents/Projets/starknet-devnet; and poetry run starknet-devnet --seed 0
end

function starknet
    ~/.cairo_venv/bin/starknet $argv
end

function starknet-devnet
    ~/.cairo_venv/bin/starknet-devnet $argv
end
