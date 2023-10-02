#!/bin/bash

for year in {2011..2018}; do
    if (( year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 ) )); then
        days_in_month=(31 29 31 30 31 30 31 31 30 31 30 31)
    else
        days_in_month=(31 28 31 30 31 30 31 31 30 31 30 31)
    fi

    for month in {1..12}; do
        for (( day=1; day<=${days_in_month[$month-1]}; day++ )); do
            date_str_show_info=$(printf "%04d.%02d.%02d" $year $month $day)
            file_str=$(printf "%04d_%02d_%02d" $year $month $day)
            echo $date_str
        done
    done
done
