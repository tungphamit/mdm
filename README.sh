csrutil authenticated-root disable;
diskutil mount /Volumes/TP-Pandora;
 Mount -uv /Volumes/TP-Pandora;	
 cd /Volumes/TP-Pandora/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/TP-Pandora/System/Library/CoreServices --bootefi --create-snapshot;
