#!/bin/bash

# Main menu
CHOICE=$(printf "⏻ Power\n🖥️ Displays\n🌐 Network\n🔊 Sound" | fuzzel --dmenu -p "Action: " -i)

case "$CHOICE" in
    *"Power"*)
        # Power options sub-menu
        POWER_CHOICE=$(printf "⏻ Shutdown (shutdown the system)\n🔒 Lock\n↻ Restart" | fuzzel --dmenu -p "Power: " -i)
        case "$POWER_CHOICE" in
            *"Shutdown"*)
                systemctl poweroff
                ;;
            *"Lock"*)
                gtklock
                ;;
            *"Restart"*)
                systemctl reboot
                ;;
        esac
        ;;
    *"Displays"*)
        # Opens nwg-displays app
        nwg-displays
        ;;
    *"Network"*)
        NETWORK_CHOICE=$(printf "Network\nBluetooth" | fuzzel --dmenu -p "Network" -i)
        case "$NETWORK_CHOICE" in
            *"Network"*)
                nm-connection-editor
                ;;
            *"Bluetooth"*)
                blueman-manager
                ;;
        esac
        ;;
    *"Sound"*)
        pavucontrol
        ;;
esac
