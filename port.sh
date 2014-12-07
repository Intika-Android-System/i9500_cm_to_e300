rm -rf ril port
mkdir port ril
mv -f *i9500*.zip port/
cd port
unzip *i9500*.zip
cd ../

## SYSTEM ##
\cp -rf files/system/* port/system/
cp -rf files/boot.img port/boot.img

## RIL-RELATED CODES ##
cp -rf port/system/framework/telephony-common.jar ril/telephony-common.jar
cd ril

## DECOMPILE ## 
jar -xvf telephony-common.jar
java -jar ../tool/baksmali.jar classes.dex -o out
cp -f ../smali/SamsungExynos5* out/com/android/internal/telephony/
java -jar ../tool/smali.jar out -o classes.dex
jar -cvf telephony-common.jar META-INF classes.dex 
cp -f telephony-common.jar ../port/system/framework/telephony-common.jar
cd ../

## BUILD zip ## 
gedit port/system/build.prop
gedit edit_build.prop
echo "Almost done... Please modify build.prop And priv-app/Teleservice.apk(refer to README) to enable LTE setting and press ENTER."
read
cd port
rm -rf system/*~
zip -r CM.zip META-INF file_contexts recovery system boot.img 
mv CM.zip ../CM.zip
cd ../
rm -rf port
rm -rf ril
echo Done! Modifiy ROM.zip to your favorite name!
read

