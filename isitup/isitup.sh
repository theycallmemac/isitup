#!/usr/bin/env bash
if [ -z "$1" ];then echo -e "\e[93m Error \e[39m URL not provided"; else case $(curl -sL -w "%{http_code}\n" $1 -o /dev/null) in 200 ) echo -e "\e[92m ✓ \e[39mUp";; 404 ) echo -e "\e[91m ⦻ \e[39mNot Found";; 000 ) echo -e "\e[91m ⦻ \e[39mNot Found";; 401 ) echo -e "\e[96m ⃠ \e[39mUnauthorized";; * ) echo -e "\e[91m ✗ \e[39mDown";; esac fi
