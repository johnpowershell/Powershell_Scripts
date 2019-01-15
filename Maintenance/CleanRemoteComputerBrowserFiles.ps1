
Function Clean-RemoteComputer{
<#
.Synopsis
  Function to clean browser temp files from a remote computer

 .Description
  Function to clean browser temp files from a remote computer.  It must be run as with proper domain credentials

 .Parameter String
  The string is the name of the computer you desire to remove the temp files.

  .Example
  Clean-RemoteComputer -computer computername
#>
[CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,
                   ValueFromPipeline=$True,
                   ValueFromPipelineByPropertyName=$True)]
        [string[]]$Computer
    )

# $Computer = Read-Host "Please enter Computer name"

#Firefox

Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\cache*\* -Recurse -Force -EA SilentlyContinue -Verbose                 
                        
Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\cache*\*.* -Recurse -Force -EA SilentlyContinue -Verbose  

Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\thumbnails\* -Recurse -Force -EA SilentlyContinue -Verbose  

Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\cookies.sqlite -Recurse -Force -EA SilentlyContinue -Verbose  

Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\webappsstore.sqlite -Recurse -Force -EA SilentlyContinue -Verbose  

Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Roaming\Mozilla\Firefox\Profiles\*.default*\places.sqlite -Recurse -Force -EA SilentlyContinue -Verbose  


Remove-Item -path  \\$Computer\c$\Users\*\\AppData\Local\Mozilla\Firefox\Profiles\*.default*\chromeappsstore.sqlite -Recurse -Force -EA SilentlyContinue -Verbose  





#Chrome

Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose  

Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Profile*\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose  


 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Default\Cache2\entries*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Default\Cookies" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Default\Media Cache" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Google\Chrome\User Data\Default\Cookies-Journal" -Recurse -Force -EA SilentlyContinue -Verbose  


#InternetExplorer

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*" -Recurse -Force -EA SilentlyContinue -Verbose  


 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Windows\WER\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Temp\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Windows\WebCache*\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Internet Explorer\DOMStore\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\LocalLow\Microsoft\Internet Explorer\DOMStore\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\LocalLow\Microsoft\Windows\AppCache\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Windows\Themes\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\Microsoft\Media Player\*" -Recurse -Force -EA SilentlyContinue -Verbose  


#CutePDF temp files

 Remove-Item -path "\\$Computer\c$\Users\*\\AppData\Local\CutePDF\*" -Recurse -Force -EA SilentlyContinue -Verbose  

 
}
