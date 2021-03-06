              cd
              mkdir bin2
              cd bin2           
              curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin2/repo 
              chmod a+x ~/bin2/repo
              cd
              cd bin2
              git clone https://github.com/akhilnarang/scripts.git scripts
              cd
              bash bin2/scripts/setup/android_build_env.sh
              bash bin2/scripts/setup/install_android_sdk.sh
              git config --global user.name "Samyak"
              git config --global user.email "jainsamyak2002.sj@gmail.com"
              cd
              mkdir OrangeFox
              cd OrangeFox
              repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0 --depth=1
              repo sync -j8 --force-sync --optimized-fetch --no-clone-bundle
              cd
              cd OrangeFox
              git clone https://github.com/Rahuh-960/wayne device/xiaomi/wayne    
              cd
              cd OrangeFox
              source build/envsetup.sh
              export ALLOW_MISSING_DEPENDENCIES=true
              export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
              export LC_ALL="C"
              export OF_MAINTAINER="Samyak , Ryukendo9"
              export FOX_VERSION="Unofficial"
              export OF_SCREEN_H=2160
              lunch omni_wayne-eng
              mka recoveryimage
              cd
              mv OrangeFox/out/target/product/wayne/OrangeFox-Unofficial-wayne.img ~
              mv OrangeFox/out/target/product/wayne/OrangeFox-Unofficial-wayne.zip ~
              curl https://bashupload.com/Ofox-Unofficial.zip --data-binary @OrangeFox-Unofficial-wayne.zip
              curl https://bashupload.com/Ofox-Unofficial.img --data-binary @OrangeFox-Unofficial-wayne.img 
