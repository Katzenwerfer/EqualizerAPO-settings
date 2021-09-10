#################################################################################################
##This script is made to help you install all the shit I have for my EqualizerAPO configuration##
#################################################################################################

function FirstRUN {
    # Creates necesary folders that will be needed for the config
    # Still need a way to detect if shit exists lol
    mkdir -Path './KatzenConfig' -Force
    mkdir -Path './KatzenConfig/Files' -Force
    mkdir -Path './KatzenConfig/EQ' -Force
   
}

function DownloadConfig {
    # Downloads all my config files and overwrites EqualizerAPO config file
    # TO DO - Backup config request
    #config.txt
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/config.txt' -OutFile './config.txt'
    #Other files
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/Files/Volume%2050.txt' -OutFile './KatzenConfig/files/Volume 50.txt'
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/Files/Flat%20library.txt' -OutFile './KatzenConfig/files/Flat library.txt'
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/Files/Crossfeed.txt' -OutFile './KatzenConfig/files/Crossfeed.txt'
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/Files/Balance.txt' -OutFile './KatzenConfig/files/Balance.txt'
}

function DownloadPresets {
    # Makes folder and downloads all AutoEQ presets I use
    #Apple Airpods Pro [https://github.com/jaakkopasanen/AutoEq/tree/master/results/crinacle/harman_in-ear_2019v2/Apple%20AirPods%20Pro]
    mkdir -Path './KatzenConfig/EQ/Apple AirPods Pro' -Force
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/jaakkopasanen/AutoEq/master/results/crinacle/harman_in-ear_2019v2/Apple%20AirPods%20Pro/Apple%20AirPods%20Pro%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Apple AirPods Pro/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/jaakkopasanen/AutoEq/master/results/crinacle/harman_in-ear_2019v2/Apple%20AirPods%20Pro/Apple%20AirPods%20Pro%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Apple AirPods Pro/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/crinacle/harman_in-ear_2019v2/Apple%20AirPods%20Pro/Apple%20AirPods%20Pro%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Apple AirPods Pro/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/crinacle/harman_in-ear_2019v2/Apple%20AirPods%20Pro/Apple%20AirPods%20Pro%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Apple AirPods Pro/Minimum phase 48000Hz.wav'
    #Apple EarPods [https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/Apple%20EarPods]
    mkdir -Path './KatzenConfig/EQ/Apple EarPods' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Apple%20EarPods/Apple%20EarPods%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Apple EarPods/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Apple%20EarPods/Apple%20EarPods%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Apple EarPods/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Apple%20EarPods/Apple%20EarPods%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Apple EarPods/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Apple%20EarPods/Apple%20EarPods%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Apple EarPods/Minimum phase 48000Hz.wav'
    #Bose QuietComfort 35 [https://github.com/jaakkopasanen/AutoEq/tree/master/results/rtings/rtings_harman_over-ear_2018/Bose%20QuietComfort%2035]
    mkdir -Path './KatzenConfig/EQ/Bose QuietComfort 35' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Bose%20QuietComfort%2035/Bose%20QuietComfort%2035%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Bose QuietComfort 35/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Bose%20QuietComfort%2035/Bose%20QuietComfort%2035%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Bose QuietComfort 35/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Bose%20QuietComfort%2035/Bose%20QuietComfort%2035%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Bose QuietComfort 35/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Bose%20QuietComfort%2035/Bose%20QuietComfort%2035%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Bose QuietComfort 35/Minimum phase 48000Hz.wav'
    #Bose SoundSport Free [https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/Bose%20SoundSport%20Free]
    mkdir -Path './KatzenConfig/EQ/Bose SoundSport Free' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Bose%20SoundSport%20Free/Bose%20SoundSport%20Free%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Bose SoundSport Free/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Bose%20SoundSport%20Free/Bose%20SoundSport%20Free%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Bose SoundSport Free/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Bose%20SoundSport%20Free/Bose%20SoundSport%20Free%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Bose SoundSport Free/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Bose%20SoundSport%20Free/Bose%20SoundSport%20Free%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Bose SoundSport Free/Minimum phase 48000Hz.wav'
    #HyperX Cloud Alpha [https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_over-ear_2018/HyperX%20Cloud%20Alpha]
    mkdir -Path './KatzenConfig/EQ/HyperX Cloud Alpha' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_over-ear_2018/HyperX%20Cloud%20Alpha/HyperX%20Cloud%20Alpha%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/HyperX Cloud Alpha/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_over-ear_2018/HyperX%20Cloud%20Alpha/HyperX%20Cloud%20Alpha%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/HyperX Cloud Alpha/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_over-ear_2018/HyperX%20Cloud%20Alpha/HyperX%20Cloud%20Alpha%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/HyperX Cloud Alpha/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_over-ear_2018/HyperX%20Cloud%20Alpha/HyperX%20Cloud%20Alpha%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/HyperX Cloud Alpha/Minimum phase 48000Hz.wav'
    #KZ ZSN Pro [https://github.com/jaakkopasanen/AutoEq/tree/master/results/crinacle/harman_in-ear_2019v2/KZ%20ZSN%20Pro]
    mkdir -Path './KatzenConfig/EQ/KZ ZSN Pro' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/crinacle/harman_in-ear_2019v2/KZ%20ZSN%20Pro/KZ%20ZSN%20Pro%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/KZ ZSN Pro/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/jaakkopasanen/AutoEq/master/results/crinacle/harman_in-ear_2019v2/KZ%20ZSN%20Pro/KZ%20ZSN%20Pro%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/KZ ZSN Pro/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/crinacle/harman_in-ear_2019v2/KZ%20ZSN%20Pro/KZ%20ZSN%20Pro%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/KZ ZSN Pro/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/crinacle/harman_in-ear_2019v2/KZ%20ZSN%20Pro/KZ%20ZSN%20Pro%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/KZ ZSN Pro/Minimum phase 48000Hz.wav'
    #Turtle Beach Elite Pro 2 SuperAmp [https://github.com/jaakkopasanen/AutoEq/tree/master/results/rtings/rtings_harman_over-ear_2018/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp]
    mkdir -Path './KatzenConfig/EQ/Turtle Beach Elite Pro 2 SuperAmp' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Turtle Beach Elite Pro 2 SuperAmp/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Turtle Beach Elite Pro 2 SuperAmp/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Turtle Beach Elite Pro 2 SuperAmp/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_over-ear_2018/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp/Turtle%20Beach%20Elite%20Pro%202%20SuperAmp%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Turtle Beach Elite Pro 2 SuperAmp/Minimum phase 48000Hz.wav'
    #Moondrop Starfield [https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/Moondrop%20Starfield]
    mkdir -Path './KatzenConfig/EQ/Moondrop Starfield' -Force
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Moondrop%20Starfield/Moondrop%20Starfield%20GraphicEQ.txt' -OutFile './KatzenConfig/EQ/Moondrop Starfield/GraphicEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Moondrop%20Starfield/Moondrop%20Starfield%20ParametricEQ.txt' -OutFile './KatzenConfig/EQ/Moondrop Starfield/ParametricEQ.txt'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Moondrop%20Starfield/Moondrop%20Starfield%20minimum%20phase%2044100Hz.wav' -OutFile './KatzenConfig/EQ/Moondrop Starfield/Minimum phase 44100Hz.wav'
    Invoke-WebRequest -Uri 'https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_in-ear_2019v2/Moondrop%20Starfield/Moondrop%20Starfield%20minimum%20phase%2048000Hz.wav' -OutFile './KatzenConfig/EQ/Moondrop Starfield/Minimum phase 48000Hz.wav'
    #Bose SoundLink Color II [?]
    mkdir -Path './KatzenConfig/EQ/Bose SoundLink Color II' -Force
    Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Katzenwerfer/EqualizerAPO-settings/Config/EQs/Bose%20SoundLink%20Color%20II/BSLCII.txt' -OutFile './KatzenConfig/EQ/Bose SoundLink Color II/BSLCII.txt'
    #Logitech z623 [?]
    mkdir -Path './KatzenConfig/EQ/Logitech z623' -Force
    Invoke-WebRequest -Uri 'https://github.com/Katzenwerfer/EqualizerAPO-settings/raw/Config/EQs/Logitech%20z623/Logitech_z623_1.txt' -OutFile './KatzenConfig/EQ/Logitech z623/Logitech_z623_1.txt'
    Invoke-WebRequest -Uri 'https://github.com/Katzenwerfer/EqualizerAPO-settings/raw/Config/EQs/Logitech%20z623/Logitech_z623_2.txt' -OutFile './KatzenConfig/EQ/Logitech z623/Logitech_z623_2.txt'
    Invoke-WebRequest -Uri 'https://github.com/Katzenwerfer/EqualizerAPO-settings/raw/Config/EQs/Logitech%20z623/Logitech_z623_3.txt' -OutFile './KatzenConfig/EQ/Logitech z623/Logitech_z623_3.txt'
}

    # It is a stupid template, else do you want
    # No, I'm not gonna optimize it to use variables and shit...maybe idk
    # I do want to make an complete installer where you can give it the links of the EQs you want and all that, but for now this is just fine

    ##EQ Template [LINK]
    #mkdir -Path './KatzenConfig/EQ/' -Force
    #Invoke-WebRequest -Uri '' -OutFile './KatzenConfig/EQ/__/GraphicEQ.txt'
    #Invoke-WebRequest -Uri '' -OutFile './KatzenConfig/EQ/__/ParametricEQ.txt'
    #Invoke-WebRequest -Uri '' -OutFile './KatzenConfig/EQ/__/Minimum phase 44100Hz.wav'
    #Invoke-WebRequest -Uri '' -OutFile './KatzenConfig/EQ/__/Minimum phase 48000Hz.wav'

FirstRUN
DownloadConfig
DownloadPresets