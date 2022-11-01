playsound() {
    len=${#history[@]}
    command=$history[$len]
    trigger='git push'
    if [[ "$command" == *"$trigger"* ]]; then
        python3 play-sound.py
    fi
}
precmd_functions+=(playsound)