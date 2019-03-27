


$oWscript = New-Object -ComObject WScript.Shell;

$oWscript.Popup("Demo Message", 5, "Hello World", 3);

(New-Object -ComObject WScript.Shell).Popup("Demo Message", 5, "Hello World", 3)

(New-Object -ComObject WScript.Shell).SendKeys('^{ESC}')
# Send Keypress: [ Enter ]
(New-Object -ComObject WScript.Shell).SendKeys('^{ESC}')
(New-Object -ComObject WScript.Shell).SendKeys('#')





#
# CMD / Batch Scripts 
#		Using 'mshta', which is IE's [ Microsoft HTML Application Host ]
#		Note: Ensure that 'mshta' command refers to 'C:\Windows\System32\mshta.exe' (common malware fakeout)
#
#
# C:\Windows\System32\mshta.exe vbscript:Execute("MsgBox(""Demo Message"",64,""Hello World"")(window.close)")
#
# C:\Windows\System32\mshta.exe vbscript:Execute("WshShell.SendKeys ""^{ESC}""")
#


#
# VB-Script
#
#
# Set wShell=wscript.createobject("wscript.shell")
# (wscript.createobject("wscript.shell")).SendKeys "^{ESC}"
# Set WshShell = Nothing
#



#
#	Citations
#		
#		CMD / Batch Script  :::  Thanks to Stack Overflow user 'tinyfiledialogs' on the forum: https://stackoverflow.com/questions/13115508
#
#		PowerShell Script  :::  Thanks to Reddit user [No username (deleted)] on the forum: https://www.reddit.com/r/vbscript/comments/4gyu4u
#
#		VB Script  :::  Thanks to Neowin user 'kimsland' on the forum: https://www.reddit.com/r/vbscript/comments/4gyu4u
#