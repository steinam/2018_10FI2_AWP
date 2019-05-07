class Auto{
    [string]$Hersteller
    [string]$Modell
    [string]$Leistung
    [string]$Verbrauch
    [string]$Baujahr
    [string]$KilometerStand
    [string]$Kennzeichen


    

    #Zustände
    hidden [bool] $DoorClosed

    Auto($k, $km, $h, $m, $b)
    {
        $this.Baujahr = $b
        $this.Hersteller = $h
        $this.Modell = $m
        $this.Kennzeichen = $k
        $this.KilometerStand = $km
        $this.DoorClosed = $true
    }

    [void]fahren()
    {
        #TODO: Implement Logic

        if($this.DoorClosed -eq $true)
        {
            Write-Host "Iam driving"
        }
        else{
            Write-Host "Doors open not driving"
        }




    }


    [void]setKilometer([int]$km)
    {
        $this.KilometerStand+= $km
    }

    [int]getKilometer()
    {
        return $this.KilometerStand
    }
}

class Mitarbeiter
{
    [string]$Name

    [Auto]$myCar

    [void]DienstreiseAntreten($val)
    {
        $this.myCar.fahren()
        $this.myCar.setKilometer($val)
    }
}


$car1 = [Auto]::new("WÜ-MA-777", 0, "Dacia", "Sandero",2009)
$car2 = [Auto]::new("WÜ-MA-778", 0, "Dacia", "Dokker",2016)

$ste = [Mitarbeiter]::new()
$syc = [Mitarbeiter]::new()

$ste.myCar = $car1

$ste.Name = "Steinam"
$syc.Name = "Sych"


$ste.DienstreiseAntreten(500)

$car1.getKilometer()
