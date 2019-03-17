#!/bin/bash

curl "http://bomb.unicss.org:4900/?username=$1&usermail=$2&submit=Submit"
--output bomb.tar

