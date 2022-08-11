!#/bin/bash
# ----------------------------------------------------------------------------------------------------------
# The SoundM-Stream installer
# the user chooses the phone system they are installing this on, and the 
# app then sets the location and audio format based on that selection.
#
# Once the location and format are confirmed, the installer puts the 
# SoundM-Streamer into /usr/local/bin and adds it to the Cronjobs, set to run once everyday at midnight.
# 
# This app also serves as an uninstaller, reading an .ini file created during installation for locations
# and removing the app from /usr/local/bin, removing the audio file from the default location, and putting
# any old files back in place.
# 
# Created by Mike Brown
# https://github.com/BeardyMike
#
# for SoundMarketing Ltd (SW)
# https://www.soundm.com
#
# August 2022
# ----------------------------------------------------------------------------------------------------------

# ----------
# Variables
# ----------

#PBX Name Array 0-15
PBX_type=("error" "3CX" "Avaya" "Lucent" "Asterix" "Gamma" "Yeastar" "BT" "Samsung" "LG" "Meridian" "Cisco" "Norstar" "Panasonic" "NEC" "CustomPBX" "")

# 3CX Variables
    3CX_settings=("/var/lib/3cxpbx/Instance1/Data/Ivr/Prompts/Sets/" "onhold" "-ac 1 -acodec pcm_s16le -ar 8000 onhold.wav")

# Avaya Variables
    Avaya_settings=("" "" "-ac 1-codec:a pcm_mulaw -ar 8000 onhold.wav" ""
    Avaya_filename=""
    Avaya_format="-ac 1-codec:a pcm_mulaw -ar 8000 onhold.wav"





# ----------
# Functions
# ----------

# Tests the users input for Phone System and gets them to confirm their selection
phone_system_tester () {
    read phone_system
    if phone_system > 0
        if phone system < 16
            echo 'you have chosen "$PBX_type[1]"'
            echo "Please confirm Y/N"
            read confirmation
            if confirmation = "Y"
    else 
        echo 
}





# ----------
# Main Code
# ----------

echo "░██████╗░█████╗░██╗░░░██╗███╗░░██╗██████╗░███╗░░░███╗░░░░░░░██████╗████████╗██████╗░███████╗░█████╗░███╗░░░███╗"
echo "██╔════╝██╔══██╗██║░░░██║████╗░██║██╔══██╗████╗░████║░░░░░░██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗████╗░████║"
echo "╚█████╗░██║░░██║██║░░░██║██╔██╗██║██║░░██║██╔████╔██║█████╗╚█████╗░░░░██║░░░██████╔╝█████╗░░███████║██╔████╔██║"
echo "░╚═══██╗██║░░██║██║░░░██║██║╚████║██║░░██║██║╚██╔╝██║╚════╝░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══██║██║╚██╔╝██║"
echo "██████╔╝╚█████╔╝╚██████╔╝██║░╚███║██████╔╝██║░╚═╝░██║░░░░░░██████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██║░╚═╝░██║"
echo "╚═════╝░░╚════╝░░╚═════╝░╚═╝░░╚══╝╚═════╝░╚═╝░░░░░╚═╝░░░░░░╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝"
echo "                                                                                                     ~Installer"
echo ""
sleep 1
echo "If you run into any issues, stop the app and contact MIKE BROWN"
echo "at soundm.com and he'll provide support."
sleep 1
echo ""
echo "What phone system are you installing this on?"
echo "[1]  3CX              [2]  Avaya          [3]  Lucent"
echo "[4]  Asterix          [5]  Gamma          [6]  YeaStar"
echo "[7]  BT               [8]  Samsung        [9]  LG"
echo "[10] Meridian         [11] Cisco          [12] Norstar"
echo "[13] Panasonic        [14] NEC            [15] Other"
echo "enter 1-15 below:"
phone_system_tester () 

