function Get-RandomURLs {
   
   [cmdletbinding()]
    
param(

    [Parameter(Mandatory=$false,ValueFromPipeline=$true)]
    [string] 
    $DicewareLength = 'Long',

    [Parameter(Mandatory=$false,ValueFromPipeline=$true)]
    [int] 
    $Length = 2,

    [Parameter(Mandatory=$false,ValueFromPipeline=$true)]
    [int] 
    $NumberOfURLs = 10,

    [Parameter(Mandatory=$false,ValueFromPipeline=$true)]
    [string] 
    $TLD = ".com"

    )

[string]$Global:ShortWordList = "$PWD\ShortWordList.txt"

[string]$Global:LongWordList = "$PWD\LongWordList.txt"

[string]$Global:FilenameDate = Get-Date -UFormat %Y%m%d

[string]$Global:OutputFile = "$PWD\RandomURLs-$FilenameDate.csv" 
     
    Get-WordList # Calls Get-WordList
    
    for ($i=1; $i -le $NumberOfURLs; $i++){

        $RandomURL = Get-Domain

        $RandomTLD = Get-Random -InputObject $TLD
         
        $RandomURL + $RandomTLD | Out-File -FilePath $OutputFile -append
        
        }
}

function Get-WordList{
      
      if(($DiceWareLength -eq "Long") -and ((Test-Path $LongWordList) -eq "True")){
 
        $Global:WordList = Get-Content -Path $LongWordList

        [int] $Global:Rolls = 5

        #Write-Host $WordList $Rolls

        }

    elseif(($DiceWareLength -eq "Long") -and ((Test-Path $LongWordList) -eq "False")){

        Write-Host "Wordlist could not be located in $PWD"

        } 
    if(($DiceWareLength -eq "Short") -and ((Test-Path $ShortWordList) -eq "True")){

        $Global:WordList = Get-Content -Path $ShortWordList

        [int] $Global:Rolls = 4

        #Write-Host $WordList $Rolls

        }

    elseif(($DiceWareLength -eq "Short") -and ((Test-Path $ShortWordList) -eq "False")){
        
        Write-Host "Wordlist could not be located in $PWD"

        }

    } #End Get-WordList
    
function Get-DiceRoll {
			
	$Global:DiceWareIndexNumber = ""
				
	for ($i=1; $i -le [int] $Rolls; $i++) {
					
	    $diceRoll = Get-Random -Minimum 1 -Maximum 7 
					
	    $DiceWareIndexNumber = $DiceWareIndexNumber.ToString() + $diceRoll.ToString()
				
	}
				
		$DiceWareIndexNumber.ToString()
			
	} # End DiceRoll

function Get-Domain {

    $wordTable = @{}

        foreach ($line in $wordList) {
    
        $wordTable.Add($line.Split("")[0], $line.Split("")[1])
        
        }

    $numberlist = @()

        for($i =1; $i -le $Length; $i++) {

        $numberList += Get-DiceRoll
        
        }

    $passphrase = foreach($num in $numberlist){
	    
		$wordTable.Get_Item($num)
		
        }

-join $passphrase

}
Export-ModuleMember -Function Get-RandomURLs




    

    

        