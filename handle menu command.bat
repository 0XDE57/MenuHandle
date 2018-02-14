set commandName="Find Handles"
set handlePath="path to handle here"

::add command for files
reg add "HKCR\*\shell\FindHandle" /ve /d %commandName% /f
reg add "HKCR\*\shell\FindHandle\command" /ve /d "cmd.exe /K %handlePath% \"%%1\"" /f

::add command for folders
reg add "HKCR\Directory\shell\FindHandle" /ve /d %commandName% /f
reg add "HKCR\Directory\shell\FindHandle\command" /ve /d "cmd.exe /K %handlePath% \"%%1\"" /f
pause