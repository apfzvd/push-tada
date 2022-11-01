myhook() {
    len=${#history[@]}
    command=$history[$len]
    trigger='git push'
    if [[ "$command" == *"$trigger"* ]]; then
        echo "It's there."
        echo $command
    fi
}
precmd_functions+=(myhook)