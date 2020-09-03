# ISO For EndeavourOS

[![Maintenance](https://img.shields.io/maintenance/yes/2020.svg)]()
https://img.shields.io/github/downloads/endeavouros-team/ISO/total

[EndeavourOS download page](https://endeavouros.com/latest-release)

[Release archive](https://github.com/endeavouros-team/ISO/releases/tag/1-EndeavourOS-ISO-releases-archive)

---

**How to handle ISO releases:**

import private key:
`gpg --import private_key_endeavour.gpg`

sign the iso-file:

`gpg --default-key info@endeavouros.com --output endeavouros-2019.12.03-x86_64.iso.sig --detach-sig endeavouros-2019.12.03-x86_64.iso`

verify:

for check:
`gpg  --recv CB23504F`
`gpg --verify endeavouros-2019.12.03-x86_64.iso.sig`

md5sum creation:

`md5sum endeavouros-2019.12.03-x86_64.iso > endeavouros-2019.12.03-x86_64.iso.md5sum`


create torrent:

`mktorrent --announce=udp://tracker.openbittorrent.com:80 -a udp://tracker.leechers-paradise.org:6969/announce -c endeavouros-2019.12.03-x86_64.iso -n endeavouros-2019.12.03-x86_64.iso -o endeavouros-2019.12.03-x86_64.iso.torrent -v ~/ENDEAVOUROS/ISO/endeavouros-2019.12.03-x86_64/endeavouros-2019.12.03-x86_64.iso -w https://github.com/endeavouros-team/ISO/releases/download/1-EndeavourOS-ISO-releases-archive/endeavouros-2019.12.03-x86_64.iso -p`
