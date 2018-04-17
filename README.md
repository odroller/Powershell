# Powershell :turtle:
This is where I like to keep all my fun Powershell scripting projects.

Get-RandomURLs
--------------
   ### What is it? 
 
 Get-RandomURLs fun Powershell script/module I put together in order to generate a list of random URLs for use in a Red vs 
 Blue style lab. It uses the same basic principles that are used in Diceware to create random passphrases. 

  ### Import 
    
  1. Download Get-RandomURLs folder.  
     
     - Get-RandomURLs
       - Get-RandomURLs.psm1
       - LongWordList.txt
       - ShortWordList.txt
  
  2. Move files into your Powershell Modules folder.
  
    $home\Documents\WindowsPowerShell\Modules\Get-RandomURLs
    
  3. Check to make sure the module is in the right directory.
  
    PS C:\> Get-Module -ListAvailable
    
   You should be able to see Get-RandomURLs as an available module
  
  4. Import the module.
  
    PS C:\> Import-Module -Name Get-RandomURLs
    
 ### Usage
    
    
     
     
