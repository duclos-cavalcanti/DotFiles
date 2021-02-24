function fish_tty
    #TTY Colorsscheme change - Grey Background - White Foreground
    if [ "$TERM" = "linux" ]; then
        echo -en "\e]P0263238" #Background
        echo -en "\e]P1FFFFFF"
        echo -en "\e]P2FFFFFF"
        echo -en "\e]P3FFFFFF"
        echo -en "\e]P4FFFFFF"
        echo -en "\e]P5FFFFFF"
        echo -en "\e]P6FFFFFF"
        echo -en "\e]P7FFFFFF"
        echo -en "\e]P8FFFFFF"
        echo -en "\e]P9FFFFFF"
        echo -en "\e]PAFFFFFF"
        echo -en "\e]PBFFFFFF"
        echo -en "\e]PCFFFFFF"
        echo -en "\e]PDFFFFFF"
        echo -en "\e]PEFFFFFF"
        echo -en "\e]PEFFFFFF"
        clear #for background artifacting
    end
end
