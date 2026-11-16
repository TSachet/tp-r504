#!/bin/bash

c1=0
c2=0

for i in {1..500}; do
    res=$(curl -s http://localhost:83)
    if [[ "$res" == *"Hello 1"* ]]; then
        ((c1++))
    elif [[ "$res" == *"Hello 2"* ]]; then
        ((c2++))
    fi
done

echo "Serveur 1 (nginx1) : $c1 requêtes"
echo "Serveur 2 (nginx2) : $c2 requêtes"
