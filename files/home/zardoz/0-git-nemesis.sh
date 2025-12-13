#!/bin/bash

echo
echo "################################################################"
echo "Shall we start the zardoz-nemesis script"
echo
echo "Answer with y/Y or n/N"
echo "################################################################"
echo
read response
if [[ "$response" == [yY] ]]; then
    git clone https://github.com/zardoz-ilbarbaro/zardoz-nemesis.git
fi

echo
echo "################################################################"
echo "####  DONE                             #########################"
echo "################################################################"
echo
