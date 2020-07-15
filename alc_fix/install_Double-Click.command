#!/bin/bash


path=${0%/*}
sudo cp -a "$path/ALCPlugFix" /Library/Apple/usr/bin
sudo chmod 755 /Library/Apple/usr/bin/ALCPlugFix
sudo chown root:wheel /Library/Apple/usr/bin/ALCPlugFix
sudo cp -a "$path/hda-verb" /Library/Apple/usr/bin
sudo chmod 755 /Library/Apple/usr/bin/hda-verb
sudo chown root:wheel /Library/Apple/usr/bin/hda-verb
sudo cp -a "$path/good.win.ALCPlugFix.plist" /Library/LaunchDaemons
sudo chmod 644 /Library/LaunchDaemons/good.win.ALCPlugFix.plist
sudo chown root:wheel /Library/LaunchDaemons/good.win.ALCPlugFix.plist
sudo launchctl load /Library/LaunchDaemons/good.win.ALCPlugFix.plist
echo '安装ALCPlugFix守护进程完成！'
echo '安装程序结束，请重启电脑！！！'
bash read -p '按任何键退出'
