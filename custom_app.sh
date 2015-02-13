apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "HomePro" ];then
	echo ">>> in custom_app $apkBaseName"
     	sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.sec.android.app.camera.Camera" packageName="com.sec.android.app.camera"/g' $tempSmaliDir/res/xml-hdpi/default_workspace.xml
		
		sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.sec.android.app.camera.Camera" packageName="com.sec.android.app.camera"/g' $tempSmaliDir/res/xml/default_workspace.xml
		
		sed -i '/className="com.baiyi_mobile.security.ui.MainSecurityActivity"/a\<favorite className="com.baidu.musicplayer.activity.MainFragmentActivity" packageName="com.baidu.musicplayer" screen="2" spanX="1" spanY="1" x="1" y="4" \/>' $tempSmaliDir/res/xml-hdpi/default_workspace.xml
fi
