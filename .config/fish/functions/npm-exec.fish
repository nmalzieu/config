function npm-exec
    set -l _npmbin (npm bin)
    set -lx PATH $_npmbin $PATH
    eval $argv
end
