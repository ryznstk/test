<<<<<<< HEAD
cd hardware/qcom-caf/sm8650/audio/agm
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_agm lineage-23.2-caf-sm8650
=======
#!/bin/bash

# Vendor (fresh clone)
echo "Cloning vendor tree..."
rm -rf vendor/xiaomi/peridot
git clone -b lineage-23.2 https://gitlab.com/blu96/vendor-xiaomi-peridot-rb.git vendor/xiaomi/peridot

# Kernel source (fresh clone)
echo "Cloning kernel source tree..."
rm -rf kernel/xiaomi/sm8635
git clone -b kprofile --depth 1 https://gitlab.com/blu96/kernel_xiaomi_sm8635.git kernel/xiaomi/sm8635

rm -rf kernel/xiaomi/sm8635-modules
git clone -b kpo --depth 1 https://gitlab.com/blu96/android_kernel_xiaomi_sm8635-modules.git kernel/xiaomi/sm8635-modules

rm -rf kernel/xiaomi/sm8635-devicetrees
git clone -b lineage-23.2 --depth 1 https://github.com/ryznstk/android_kernel_xiaomi_sm8635-devicetrees.git kernel/xiaomi/sm8635-devicetrees

# Hardware xiaomi (fresh clone)
echo "Cloning hardware xiaomi source..."
rm -rf hardware/xiaomi
git clone -b lineage-23.2 https://github.com/ryznstk/android_hardware_xiaomi.git hardware/xiaomi

rm -rf packages/apps/XiaomiDolby

# MiuiCamera device tree (fresh clone)
echo "Cloning MiuiCamera device tree..."
rm -rf device/xiaomi/peridot-miuicamera
git clone https://github.com/sm8635-dev/device_xiaomi_peridot-miuicamera.git device/xiaomi/peridot-miuicamera

# MiuiCamera vendor tree (fresh clone)
echo "Cloning MiuiCamera vendor tree..."
rm -rf vendor/xiaomi/peridot-miuicamera
git clone https://github.com/sm8635-dev/vendor_xiaomi_peridot-miuicamera.git vendor/xiaomi/peridot-miuicamera

# Gamebar
echo "Cloning Gamebar tree..."
rm -rf packages/apps/GameBar
git clone https://github.com/droidcore/packages_apps_GameBar.git packages/apps/GameBar

# LMO
echo "Cloning LMOfreeroam tree..."
rm -rf packages/apps/LMOFreeform
git clone https://github.com/ryznstk/packages_apps_LMOFreeforms.git packages/apps/LMOFreeform

rm -rf packages/apps/DepthWallpaperHelper

# Part
echo "Cloning Parts tree..."
rm -rf packages/apps/XiaomiParts
<<<<<<< HEAD
git clone https://github.com/ryznstk/packages_apps_XiaomiParts.git packages/apps/XiaomiParts
=======

# ViperFX
rm -rf packages/apps/ViPER4AndroidFX
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# KProfiles (fresh clone)
echo "Cloning KProfiles..."
rm -rf packages/apps/KProfiles
git clone https://github.com/droidcore/packages_apps_KProfiles.git packages/apps/KProfiles
>>>>>>> c82b26a (v4a)

cd system/sepolicy
git fetch https://github.com/ryznstk/lunaris_system_sepolicy.git test
>>>>>>> ee8ecfe (v4a)
git reset --hard FETCH_HEAD
croot

cd hardware/qcom-caf/sm8650/audio/graphservices
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_audioreach-graphservices lineage-23.2-caf-sm8650
git reset --hard FETCH_HEAD
croot

cd hardware/qcom-caf/sm8650/audio/pal
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_arpal-lx lineage-23.2-caf-sm8650
git reset --hard FETCH_HEAD
croot

cd hardware/qcom-caf/sm8650/audio/primary-hal
git fetch https://github.com/LineageOS/android_hardware_qcom_audio-ar lineage-23.2-caf-sm8650
git reset --hard FETCH_HEAD
croot

cd hardware/lineage/interfaces
git fetch https://github.com/sm8635-dev/hardware_lineage_interfaces sixteen
git reset --hard FETCH_HEAD
croot

cd device/lineage/sepolicy
git fetch https://github.com/sm8635-dev/device_lineage_sepolicy sixteen
git reset --hard FETCH_HEAD
croot

<<<<<<< HEAD
rm -rf vendor/yaap/signing/keys
git clone https://github.com/Neon-Duchamp/keys.git -b yaap-keys vendor/yaap/signing/keys
=======
# Always back to root at the end
if command -v croot &>/dev/null; then
  croot
else
  cd "$ANDROID_BUILD_TOP" || true
fi

echo "vendorsetup.sh execution complete."
>>>>>>> ee8ecfe (v4a)
