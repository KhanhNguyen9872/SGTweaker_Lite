set shell=CreateObject("Shell.Application")
' shell.ShellExecute "application", "arguments", "path", "verb", window
shell.ShellExecute "khanh11a1_check.bat",,"%windir%\khanh10a1", "runas", 1
set shell=nothing 