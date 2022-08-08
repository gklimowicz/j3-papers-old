{
    for (i = 2; i <= NF; i++) {
        histo[$i + 0]++;
    }
}

END {
    printed = 0;
    for (i = 0; i <= 255; i++) {
        if (i in histo) {
            if (printed) printf " ";
            printf "%02x%c:%d", i, i, histo[i]
            ++printed
        }
    }
    if (printed) printf "\n"
}
