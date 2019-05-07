class Auto{
    [string]$Hersteller
    [string]$Modell
    [string]$Leistung
    [string]$Verbrauch
    [string]$Baujahr
    [string]$KilometerStand
    [string]$Kennzeichen


    #Liste meiner ehemaligen Fahrer
     $Drivers = @()
    

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

    [void]fahren([Mitarbeiter]$mitarbeiter)
    {
        #TODO: Implement Logic

        $this.Drivers += $mitarbeiter

        if($this.DoorClosed -eq $true)
        {
            
            Write-Host "Iam driving"
        }
        else{
            Write-Host "Doors open not driving"
        }

    }


    [array]getDrivers()
    {
        return $this.Drivers

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
        $this.myCar.fahren($this)
        $this.myCar.setKilometer($val)
    }
}


$car1 = [Auto]::new("WÜ-MA-777", 0, "Dacia", "Sandero",2009)
$car2 = [Auto]::new("WÜ-MA-778", 0, "Dacia", "Dokker",2016)

$ste = [Mitarbeiter]::new()
$syc = [Mitarbeiter]::new()

$ste.Name = "Steinam"
$syc.Name = "Sych"

$ste.myCar = $car1
$ste.DienstreiseAntreten(500)
$car1.getKilometer()


$syc.myCar = $car1
$syc.DienstreiseAntreten(300)
$car1.getKilometer()


$res = $car1.Drivers

$res[0].myCar.Baujahr