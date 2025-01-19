# About
This script allows builing Infinity-For-Reddit [1] with private apikeys on Linux based on the build script [2]. It runs in bash on the host machine and builds the app there as well, thus significantly improving build times compared to the VM Google Colab provides. Additionally this scripts allows checking out specific tagged releases as opppossed to the current git commit as done in the Colab script. 

# Requirements
git, java-11-openjdk (provides java), java-11-openjdk-devel (provides javac)  
Functioning Android build environment including Android SDK Command-Line Tools from [3]

# Build Instructions on Fedora 41
- Install Java and Javac
  
    `sudo dnf install java-17-openjdk`
  
    `sudo dnf install java-17-openjdk-devel`
  
 - Install Android CLI tools
   
    `wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip`
  
- Extract to ~/Android or so
  
- Except licenses in ../android-sdk/cmdline-tools/bin

    `./sdkmanager --licenses` or 

    `./sdkmanager --sdk_root=/home/$USER/Android/android-sdk --licenses`

- Change Java version if necessary

    `sudo alternatives --config java`


[1] https://github.com/Docile-Alligator/Infinity-For-Reddit  
[2] https://colab.research.google.com/drive/13AE8RvjnCfuBJGaACEqxeBIMo33_l-Sc?usp=sharing#scrollTo=BdsYmWoe-O5ethis  
[3] https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
