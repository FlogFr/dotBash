#!/bin/bash +x

CLR='\033[0m'
RED='\033[01;31m'
GRE='\033[01;32m'
ORA='\033[01;33m'

if [[ $BASH_ARGC -ne 2 ]]; then
    echo -e "${RED}[KO]${CLR} proper syntax : `basename` <first hierarchy> <second hierarchy>"
    exit 1
fi

firstHier=$1
secondHier=$2

# 
echo -e "${GRE}[begin]${CLR} Gonna compare :\n${GRE}${firstHier}${CLR}\nand\n${GRE}${secondHier}${CLR}"


function compare
{
    find "$firstHier" -type f | while read FILE; do
        pathFile=${FILE:${#firstHier}}
        if [[ -f $(eval echo "'${secondHier}/${pathFile}'") ]];then
            diff ${firstHier}/${pathFile} ${secondHier}/${pathFile}  1>/dev/null 2>/dev/null
            if [[ "$?" == 0 ]];then
                echo -e "${GRE}[OK]${CLR} same file ${pathFile} on both hierarchy" >&1
            else
                echo -e "${RED}[diff]${CLR} diff file ${pathFile}" >&2
            fi  
        else
            echo -e "${RED}[not found]${CLR} file ${pathFile} not existing in ${secondHier}" >&2
        fi  
    done
    
    find "$secondHier" -type f | while read FILE; do
        pathFile=${FILE:${#secondHier}}
        if [[ ! -f $(eval echo "'${firstHier}/${pathFile}'") ]];then
            echo -e "${RED}[not found]${CLR} file ${pathFile} not existing in ${firstHier}" >&2
        fi  
    done
}

compare $0 $1

echo -e "${GRE}END OF SCRIPT${CLR}" >&1

