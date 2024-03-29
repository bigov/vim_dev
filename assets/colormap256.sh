#!/usr/bin/env bash
# Вывод цветовой карты для терминалов с поддержкой 88/256 цветов

for bgtxt in 38 48 ; do # 38-код текста, 48-код фона
    for color in {0..255} ; do # Диапазон доступных цветов
        # Вывод цветовой палитры
        printf "\e[${bgtxt};5;%sm  %3s  \e[0m" $color $color
        # 6 цветов в строке
        if [ $((($color + 1) % 6)) == 4 ] ; then
            echo # Новая строка
        fi
    done
    echo # Новая строка
done
read -p "Press enter to continue"
exit 0
