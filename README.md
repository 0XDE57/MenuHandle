# MenuHandle
Context menu command to find open handles to files/folders.

![](/docs/folder%20in%20use.PNG)

Tired of windows not telling you which program is impeding your workflow? </br>
Tired of trying to figure out which process is holding your file/folder hostage? </br>
Tired of killing various processes in task manger until you can continue your day? </br>

Well fuss no more! This script adds a command to the right-click context menu to find any processes/programs that are using your file/folder.

![](/docs/menu%20command.PNG)
![](/docs/handle.PNG)
Oh look! VLC is playing a song that was in that folder, thus preventing us from deleting the folder.

## How to use/install?    
1. Download and extract Handle: https://docs.microsoft.com/en-us/sysinternals/downloads/handle    
2. Download the script ![handle menu command.bat](handle%20menu%20command.bat)   
3. Edit the script in your favourite text editor    
4. Set the variable **handlePath** to the path of the handle executable. </br>
   ``` eg: handlePath="E:\Documents\SysinternalsSuite\handle.exe" ```
5. Run the script as admin    
6. Enjoy. All your problems in life are solved.

## How it Works
This script simply adds registry key to add a command to the right-click context menu. The command and passes the selected file/folder to handle. The real heavy lifting is done by handle.


## What is a handle? 
A handle is a reference to a resource such as a file, thread, memory or a pipe. Often a pointer to to a memory location. </br>
See the [msdn](https://msdn.microsoft.com/en-us/library/windows/desktop/ms724457(v=vs.85).aspx) for more.

## Tips/Notes
You must have administrative privilege to run Handle.</br>
You can edit the script to add the -c flag to handle command ([see handle usage](https://docs.microsoft.com/en-us/sysinternals/downloads/handle#usage)), which will forcibly close the handles so you don't have to close any programs. However this is **not recommended** as forcibly closing handles may result in instability / crashes. </br>
This tool combined with the [takeown](https://gist.github.com/0XDE57/38957c935788926416ba20b6bec6fa43) command is very powerful.
