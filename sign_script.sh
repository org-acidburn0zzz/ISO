#!/bin/bash

# ISO For EndeavourOS
ISO_NAME=$(ls ../iso_sign)
LOCAL_PATH="../iso_sign"
GITHUB_DOWNLOAD="https://github.com/endeavouros-team/ISO/releases/download/1-EndeavourOS-ISO-releases-archive/"

_sign(){
gpg --default-key info@endeavouros.com --output $ISO_NAME.sig --detach-sig $ISO_NAME

}

_md5sum(){
md5sum $ISO_NAME > $ISO_NAME.md5sum

}

_torrent(){
mktorrent --announce=udp://tracker.openbittorrent.com:80 -a udp://tracker.leechers-paradise.org:6969/announce -c $ISO_NAME -n $ISO_NAME -o $ISO_NAME.torrent -v $LOCAL_PATH/$ISO_NAME -w $GITHUB_DOWNLOAD/$ISO_NAME -p

}

###############
# STARTS HERE #
###############
_sign
_md5sum
_torrent
