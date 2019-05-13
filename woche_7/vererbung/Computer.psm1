using module ".\Ressource.psm1"

class Computer: Ressource{

    [string]$OperatingSystem
    [int]$HarddiskCapacity

    #Konstrktor der UKlasse ruft per base
    #den Konstruktor der Oberklasse auf
    Computer([int]$h, [string]$m): base($m)
    {
        $this.HarddiskCapacity = $h
    }
}