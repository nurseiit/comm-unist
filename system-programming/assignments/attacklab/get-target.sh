#!/bin/bash

curl "http://bomb.unicss.org:4950/?username=$1&usermail=$2&submit=Submit" --output target.tar

