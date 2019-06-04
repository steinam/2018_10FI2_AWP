
function auto_delete([string]$FullFilePfad)
{
    #String ist null
    #falscher Pfad = Pfad nicht vorhanden
    #keine Rechte
    try{
        del $FullFilePfad -ErrorAction Stop 
   
        write-Host "Steinam ist toller"    
    }

    catch [System.Management.Automation.ItemNotFoundException]
    {
        Write-Host $_  #Fehler

    }

    catch{

    }
    
  
        
    #Wird auch immer ausgeführt, auch wenn 
    #kein Fehler erzeugt wird
    finally{
        Write-Host "Bin im finally - Block"
    }
}


auto_delete "C:\temp\test123\html_und_css.docx"

#$Error[0].Exception.GetType().FullName
#$_


#del C:\temp\test\genindex.html














function StartWord()
{
    
    #Ist Word vorhanden ?
    $Winword = New-Object -ComObject Word.Application

    return $winword

}

