apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "DMAgent" with "DmAgentd""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#DMAgent#DmAgent#g'  

		echo ">>> in custom_app $apkBaseName"
		echo ">>> use Lcom/mediatek/notification/NotificationPlus instead of Landroid/app/NotificationPlus in Phone"
		echo ">>> use Lcom/mediatek/notification/NotificationManagerPlus instead of Landroid/app/NotificationManagerPlus in Phone"
		sed -i 's#Landroid/app/NotificationPlus#Lcom/mediatek/notification/NotificationPlus#g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali
		sed -i 's#Landroid/app/NotificationManagerPlus#Lcom/mediatek/notification/NotificationManagerPlus#g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali


elif [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
	
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

	echo ">>> add origin settings"
    	sed -i '/com.baidu.key.KeySettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml

#    	echo ">>> in custom_app for $apkBaseName to disadble user"
#	sed -i 's#android:icon="@drawable/ic_settings_multiuser" android:id="@id/user_settings" android:title="@string/user_settings_title" android:fragment="com.android.settings.users.UserSettings#g' $tempSmaliDir/res/xml/settings_headers.xml

#elif [ "$apkBaseName" = "HomePro" ];then
#	echo ">>> in custom_app $apkBaseName"
#		sed -i 's/className="com.baidu.searchbox.SplashActivity" packageName="com.baidu.searchbox"/className="com.baidu.searchbox.MainActivity" packageName="com.baidu.searchbox"/g' $tempSmaliDir/res/xml-hdpi-960x540/default_workspace.xml

fi
