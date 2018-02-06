#! /usr/bin/env osascript

#halt playback 

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
	do script "`sonic_pi \"stop\"`" in window 1
end tell
