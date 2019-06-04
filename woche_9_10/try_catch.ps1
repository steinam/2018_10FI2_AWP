function deleteFile([string]$FullPathOfFile)
{
    #Löschen der Datei
    #Möfliche Probleme
    #- Datei nicht vorhanden
    #- Datei ist gelocked
    #- Keine Löschrechte auf Datei
    
    try{ 
        #Wir probieren die DAtei zu löschen
        #wenn es funktioniert, dann ist alles gut
        #wenn nicht, wird durh -ErrorAction STop eine Ausnahme
        #produziert, die vom catch-Block gefangen werden kann
    
        del $FullPathOfFile -ErrorAction Stop

        $Datum = Get-Date
        $text = "Datum: " + $Datum + ":" + $FullPathOfFile
        Add-Content -Value $text -Path C:\temp\test\logfile.txt

        write-Host "Steinam ist der Beste"

    }



    #ich will einen bestimmten Fehlertyp fangen
    catch [System.Management.Automation.ParameterBindingException]{

        Write-Host "Mache deine Addcontent richtig" 
    }



    catch{
        #Logik im Fehlerfalle
        Write-Host "Datei konnte nicht gelöscht werden"

    }

    
    #Loggen des Löschvorgansg in einer Textdatei
    #mit Angabe von Datum des Löschvorgangs

    #Codeblock, der immer ausgeführt wird, egal ob das Programm einen 
    #Fehler wirft oder nicht
    finally{


    }
}


deleteFile "C:\temp\test\Hotelzimmer.docx"