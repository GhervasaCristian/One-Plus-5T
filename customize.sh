##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment DEBUG if you want full debug logs (saved to /sdcard)
#MINAPI=21
#MAXAPI=25
#DYNLIB=true
#DEBUG=true

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example

# Construct your own list here
REPLACE="
  /system/priv-app/OnePlusCamera
  /system/priv-app/OnePlusCameraService
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders in magisk module directory have the $MODPATH prefix - keep this prefix on all of your files/folders
  # Some examples:
  
  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm_recursive $MODPATH/system/lib 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/lib/arm/soundfx 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm $MODPATH/system/lib/arm/libart.so 0 0 0644
  # set_perm /data/local/tmp/file.txt 0 0 644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libarcsoft_hdr_denoise_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libarcsoft_high_dynamic_range.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libc++.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libarcsoft_smart_denoise.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libcutils.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libcvface_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libcvimage_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libjni_cvface_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libjni_cvimage_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libjnistblur_capture_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libjnistblur_preview_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libmpbase.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libopbaselib.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libopcamera.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/liboppictureprocess.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libOPX.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libstblur_capture_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libstblur_preview_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm/libVDBlurlessAPI_v2.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libarcsoft_hdr_denoise_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libarcsoft_high_dynamic_range.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libc++.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libarcsoft_smart_denoise.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libcutils.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libcvface_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libcvimage_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libjni_cvface_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libjni_cvimage_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libjnistblur_capture_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libjnistblur_preview_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libmpbase.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libopbaselib.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libopcamera.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/liboppictureprocess.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libOPX.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libstblur_capture_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libstblur_preview_api.so 0 0 0644
  set_perm $MODPATH/system/priv-app/OnePlusCamera/lib/arm64/libVDBlurlessAPI_v2.so 0 0 0644
}

##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
