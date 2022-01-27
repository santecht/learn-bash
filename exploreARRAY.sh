#!/bin/bash

MSG=( "START" )
if [[ -f abc.log ]]; then
  MSG[${#MSG[@]}]="abc File success message"
else
  MSG[${#MSG[@]}]="abc File error message"
fi
if [[ -f def.log ]]; then
  MSG[${#MSG[@]}]="def File success message"
else
  MSG[${#MSG[@]}]="def File error message"
fi
if [[ -f ghi.log ]]; then
  MSG[${#MSG[@]}]="ghi File success message"
else
  MSG[${#MSG[@]}]="ghi File error message"
fi
echo "enter FOR loop"
for m in "${MSG[@]}"; do
  printf "%s\n" "$m"
done
