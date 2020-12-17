#!/usr/bin/env bash
#-------------------------------------------------------------------------
#CREATION DATE: 17-12-2020
#PURPOSE: pipe to this to show big qr-code of text
# echo 'www.google.com' | to-qrcode.sh
#-------------------------------------------------------------------------
qrencode -o - | feh -FZ -
