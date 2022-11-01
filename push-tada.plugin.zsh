myhook() {
    len=${#history[@]}
    command=$history[$len]
    trigger='git push'
    if [[ "$command" == *"$trigger"* ]]; then
        python3 play.py
    fi
}
precmd_functions+=(myhook)