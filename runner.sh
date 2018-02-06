#! /usr/bin/env osascript

#run AppleScript syntax from a shell script to activate a Terminal process and execute ruby files on a macOS machine

tell application "System Events"
	if "Terminal" is not in name of processes then launch application "Terminal"
	tell process "Terminal"
		set frontmost to true
		if (count windows) is 1 then keystroke "n" using command down
		if (count windows) is 2 then
		end if
	end tell
	
end tell

tell application "Terminal"
#change the file pathway as necessary
	do script "`sonic_pi \"run_file '~/Dropbox/Code/Ruby/SonicPi/multiRandom.rb'\"`" in window 1
end tell
