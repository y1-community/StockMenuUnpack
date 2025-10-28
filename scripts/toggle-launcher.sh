#!/system/bin/sh
# Innioasis Y1 - Toggle Launcher Script
# Functionality: Switch between com.innioasis.y1 and org.rockbox
# Location: /data/local/tmp/toggle-launcher.sh

# Check which app is currently enabled
y1_enabled=$(pm list packages -e | grep com.innioasis.y1)
rockbox_enabled=$(pm list packages -e | grep org.rockbox)

if [ -n "$y1_enabled" ]; then
    # Y1 is enabled, switch to Rockbox
    echo "Switching to Rockbox..."
    pm disable com.innioasis.y1
    pm enable org.rockbox
    # Launch Rockbox
    am start -n org.rockbox/.RockboxActivity
else
    # Rockbox is enabled, switch to Y1
    echo "Switching to Y1..."
    pm disable org.rockbox
    pm enable com.innioasis.y1
    # Launch Y1
    am start -n com.innioasis.y1/.activity.MainActivity
fi

