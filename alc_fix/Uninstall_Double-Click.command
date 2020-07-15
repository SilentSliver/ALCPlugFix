#!/bin/bash


path=${0%/*}
sudo mount -uw /
sudo launchctl remove /Library/LaunchDaemons/good.win.ALCPlugFix.plist
sudo rm -rf /Library/LaunchDaemons/good.win.ALCPlugFix.plist
sudo rm -rf /Library/Apple/usr/bin/ALCPlugFix
sudo rm -rf /Library/Apple/usr/bin/hda-verb

echo '卸载ALCPlugFix守护进程完成！'
echo '重建缓存中，请稍候……'
sudo kextcache -i /
echo '安装程序结束，请重启电脑！！！'
bash read -p '按任何键退出'
