set shell=CreateObject("Shell.Application")
' shell.ShellExecute "application", "arguments", "path", "verb", window
shell.ShellExecute "khanh11a1.bat",,"%windir%\khanh10a1", "runas", 0
set shell=nothing 