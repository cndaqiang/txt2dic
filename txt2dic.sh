#!/bin/bash
chmod +x ./Script/txt2dic.py
cat ./INPUT/*.txt > input.txt
./Script/txt2dic.py
cat output.txt > ./OUTPUT/output.txt
rm input.txt
rm output.txt
echo "Complete"