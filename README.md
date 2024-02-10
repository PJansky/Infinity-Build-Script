# About
This script allows builing Infinity-For-Reddit [1] with private apikeys on Linux based on the build script [2]. It runs in bash on the host machine and builds the app there as well, thus significantly improving build times compared to the VM Google Colab provides. Additionally this scripts allows checking out specific tagged releases as opppossed to the current git commit as done in the Colab script. 

# Requirements
git, java-11-openjdk (provides java), java-11-openjdk-devel (provides javac)  
Functioning Android build environment including Android SDK Command-Line Tools from [3]

[1] https://github.com/Docile-Alligator/Infinity-For-Reddit  
[2] https://colab.research.google.com/drive/13AE8RvjnCfuBJGaACEqxeBIMo33_l-Sc?usp=sharing#scrollTo=BdsYmWoe-O5ethis  
[3] https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
