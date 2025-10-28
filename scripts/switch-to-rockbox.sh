#!/system/bin/sh
# Innioasis Y1 script
# Functionality: Switch to Rockbox Firmware/App

keymap_rockbox="/system/usr/keylayout/Rockbox.kl"
keymap="/system/usr/keylayout/Generic.kl"

echo "Setting up Rockbox Keymap."
mount -o remount,rw /system
cp "$keymap_rockbox" "$keymap"
echo "Disabling Stock Y1"
pm disable com.innioasis.y1
echo "Enabling Rockbox"
pm enable org.rockbox
echo "Rebooting"
reboot

