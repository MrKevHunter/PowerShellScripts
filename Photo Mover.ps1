function funLine($strIN) 
{
 $strLine = "=" * $strIn.length
 Write-Host -ForegroundColor Yellow "`n$strIN"
 Write-Host -ForegroundColor Cyan $strLine
} #end funline


function FileMover{
param($file, $dateTaken)
$Year = $dateTaken.Year
$Month = $dateTaken.Month
$FolderName = "$Year-$Month

if($file.


}
 
function funMetaData(){
    foreach($sFolder in $folder)
    {
        $a = 0
        $objShell = New-Object -ComObject Shell.Application
        $objFolder = $objShell.namespace($sFolder)
        
        foreach ($File in $objFolder.items())
        { 
            FunLine( "$($strFileName.name)")
            for ($a ; $a  -le 266; $a++)
            { 
                if($objFolder.getDetailsOf($File, $a))
                {
                    $hash += @{ `
                    $($objFolder.getDetailsOf($objFolder.items, $a))  =`
                    $($objFolder.getDetailsOf($File, $a)) 
                } #end hash
                if($hash.ContainsKey("Date taken")){
                    Add(1,2)
                    FileMover $File  $hash.Get_Item("Date taken")
                }
           $hash
           $hash.clear()
          } #end if
      } #end for 
    $a=0
   } #end foreach
 } #end foreach
} #end funMetadata 

# *** Entry Point ***

($folder = "C:\Temp\pics") #end param
funMetaData