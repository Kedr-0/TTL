#!/bin/bash


ttl=$(ping -c 1 $1 | head -n2 | tail -n1 | cut -d '=' -f3 | sed 's/ time//')

if [[ $ttl -ge 50 && $ttl -le 70 ]]; then
        system="\e[33mLinux\e[0m"
elif [[ $ttl -ge 100 && $ttl -le 130 ]]; then
        system="\e[36mWindows\e[0m"
else
        system="\e[31mFuera de Rango\e[0m"
fi

echo 'Idenficando SO'
echo '----------------------'
echo -e "Objetivo: $1"
echo '----------------------'
echo -e "\e[32mTTL CAPTURADO: ${ttl}\e[0m"
echo '----------------------'
echo -e "SO: ${system}"
