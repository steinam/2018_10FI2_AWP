class Article{
    [int]$ArticleNumber
    [double]$Price
    
    [double]getPrice()
    {
         return $this.Price
    }
}

class DVD:Article 
{
    hidden [string]$Name
    hidden[int]$Duration
    hidden [int]$CountryCode

    #Wert wird bei der Klasse gehalten
    #Objekte können per statischen Zugriff diesen Wert lesen und ändern
    #Wenn der Wert über einem Objekt geändert wird,
    #verfügen alle Objekte über diesen neuen Wert
    static [double] $VAT = 0.19

    [double]getPrice()
    {
         #Objekt DVD wird zu einem Artikel gecasted/Umgewandelt
         #jetzt benutzt man die Methode der Oberklasse#

         $temp = ([Article]$this).getPrice()
         $temp1 = $temp * $this::VAT
         return $temp + $temp1

    }
}

$Terminator = [DVD]::new()
$Terminator.Price = 100

$StirbLangsam1 = [DVD]::new()

$Terminator.Name = "Arnold"
$StirbLangsam1.Name = "Bruce"


#statische Attribute 
#$Terminator::VAT
#$Terminator::VAT = 0.45

#$StirbLangsam1::VAT

################################

$Terminator.getPrice()







