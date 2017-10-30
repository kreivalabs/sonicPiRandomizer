#!/usr/bin/env osascript

#check if Terminal is running, launch if necessary
tell application "System Events" 
if "Terminal" is not in name of processes then launch application "Terminal" 
tell process "Terminal" 
set frontmost to true
#make a new Terminal window if necessary
if (count windows) is 1 then keystroke "n" using command down 
if (count windows) is 2 then 
end if 
end tell 
end tell

#send Sonic-Pi-Cli command to launch Ruby file. 
tell application "Terminal"
#set file path as necessary
do script "`sonic_pi \"run_file '~/Dropbox/Code/Ruby/SonicPi/multiRandom.rb'\"`" in window 1
end tell
