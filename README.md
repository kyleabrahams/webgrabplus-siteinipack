# WebGrab+Plus Siteini.pack
Repo containing the WebGrab+Plus Siteini.pack

The Siteini.pack is used by [WebGrab+Plus](http://webgrabplus.com/)

A Siteini, is a script-like file containing information on how to grab info from a specific site. This pack is a collection of all of the supported sites, grouped by country. A nice overview of this can be found on our [EPG channels page](http://webgrabplus.com/epg-channels)

mv WebGrabPlus/WebGrab++.sh /webgrabplus-siteinipack

mkdir -p /webgrabplus-siteinipack/webgrabplus-docker

mv /webgrabplus-siteinipack/WebGrab++.sh ~/webgrabplus-docker/
tar -xvf WebGrabPlus_VX.X.X.tgz -C ~/webgrabplus

chmod +x run.net.sh

./run.net.sh

mono WebGrabPlus_V5.2_install_0.exe

wine WebGrabPlus_V5.2_install_0.exe

mono ConfigMaker.exe

wine ConfigMaker.exe

wine-staging ConfigMaker.exe

wine ConfigMaker.exe > wine_log.txt 2>&1

WINEDEBUG=+loaddll,+relay,+seh wine ConfigMaker.exe > debug_log.txt 2>&1


