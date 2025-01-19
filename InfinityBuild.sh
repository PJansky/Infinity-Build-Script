## Based on https://colab.research.google.com/drive/13AE8RvjnCfuBJGaACEqxeBIMo33_l-Sc?usp=sharing#scrollTo=BdsYmWoe-O5e
## Please consider supporting u/Hostilenemy for creating this application

## Configuration
VERSION=v7.0.0
USERNAME=<YOUR_USERNAME>
APIKEY=<YOUR_APIKEY>

## Get sources
git clone https://github.com/Docile-Alligator/Infinity-For-Reddit
cd Infinity-For-Reddit
git checkout tags/${VERSION}

## Change Redirect URL, API key and User-Agent
APIUTILS='app/src/main/java/ml/docilealligator/infinityforreddit/utils/APIUtils.java'

sed -i 's/NOe2iKrPPzwscA/'$APIKEY'/g' $APIUTILS
sed -i 's+infinity://localhost+http://127.0.0.1+g' $APIUTILS
sed -i 's+android:ml.docilealligator.infinityforreddit:+android:personal-app:'+g $APIUTILS
sed -i 's+Hostilenemy+Throwaway68252455'+g $APIUTILS

## Add Keystore
wget https://github.com/TanukiAI/Infinity-keystore/raw/main/Infinity.jks

GRADLEBUILD='app/build.gradle'

sed -i "/release {/a \\
            signingConfig signingConfigs.release" $GRADLEBUILD

sed -i "/buildTypes {/i \\
    signingConfigs { \\
        release { \\
            storeFile file(\"../Infinity.jks\")\\
            storePassword \"Infinity\"\\
            keyAlias \"Infinity\"\\
            keyPassword \"Infinity\"\\
        }\\
    }" $GRADLEBUILD
    
 ## Build app
./gradlew assembleRelease  

 ## Move APK to TLD and rename
cp app/build/outputs/apk/release/app*.apk Infinity_$VERSION.apk
