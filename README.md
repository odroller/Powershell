# Powershell :turtle:
This is where I like to keep all my fun Powershell scripting projects.

Get-RandomURLs
--------------
   ### What is it? 
 
 Have you ever needed to create a list of randomly generated URLs? I didn't think I would need to either. Get-RandomURLs is a 
 fun Powershell script/module I put together in order to generate a list of random URLs for use in a Red vs Blue style lab. It 
 uses the same basic principles that are used in Diceware to create random passphrases. 

  ### Import 
    
  1. Download Get-RandomURLs folder.  
     
     * Get-RandomURLs
       * Get-RandomURLs.psm1
       * LongWordList.txt (EFF 5-digit Long Word List)
       * ShortWordList.txt (EFF 4-digit Short Word List)
  
  2. Move files into your Powershell Modules folder.
  
    $home\Documents\WindowsPowerShell\Modules\Get-RandomURLs
    
  3. Check to make sure the module is in the right directory.
  
    PS C:\> Get-Module -ListAvailable
    
   You should be able to see Get-RandomURLs as an available module
  
  4. Import the module.
    
    PS C:\> Import-Module -Name Get-RandomURLs
    
 ### Usage
  
  Simply running the module will create a CSV called RandomURLs-YYMMDD.csv in your $PWD. 
    
    PS C:\> Get-RandomURLs
    
  **Get-RandomURLs** has several command line arguments (parameters) that can be passed to it. 
  
  1. -DicewareLength <long> or <short> (The default is <long> and uses the EFF 5-digit Long Word List.)
   
  2. -Length <int> (The default integer is 2. This will generate a random two word URL.)
   
  3. -NumberOfURLs <int> (The default integer is 10. This will generate 10 random URLs.)
   
  4. -TLD <str> (The default string is ".com". (This will generate URLs with the Top Level Domain of ".com".)
   
 ### To-Do List
 
 - Include text files in actual code in order to make it simpler to use.
 - Change code to add the option of where to write out the RandomURLs CSV.
 - Write module to generate actual passphrases (**Get-DicewarePassphrase**). 
 - Test code on Powershell for \*nix. 
   
 ### Credit
 
 @Tsynapse
 
 I borrowed his code from (https://github.com/Tsynapse/Diceware-password) and turned it into functions in order to 
 make this script work the way I wanted it to. 
 
 ### Contact
 
[@cysecgunz](https://twitter.com/cysecgunz) on the Twitterz!  
 
 ### License 
 
 GNU General Public License (GPL 3.0)
 
 
 
 
 
    
    
     
     
