function cclear
    clear and; printf '\e[3J'
end

function docs
    cd ~/Documents
end

function cv
    cd ~/Documents/Projets/converse
end

function stagingConverseLogs
    kubectl config use-context admin@converse-staging && stern -l "app=converse-backend-staging"
end

function prodConverseLogs
    kubectl config use-context admin@converse-prod && stern -l "app=converse-backend-prod"
end

function arb
    cd ~/Documents/Projets/arbitrage/arbi12
end

function tailtap
    cd ~/Documents/Projets/tailtap
end

function apemash
    cd ~/Documents/Projets/apemash
end

function opi
    cd ~/Documents/Projets/OPI
end

function oneshot
    cd ~/Documents/Projets/oneshot
end

function convos
    cd ~/Documents/Projets/convos
end

function mio
    cd ~/Documents/Projets/mio/mio
end

function tunnel
    if test (count $argv) -lt 1
        echo "Usage: tunnel <port>"
        return 1
    end

    echo "https://tunnel.noe.me will redirect to http://localhost:$argv[1]"

    set port $argv[1]

    cloudflared tunnel --config /dev/null --url "http://localhost:$port" run mytunnel
end

