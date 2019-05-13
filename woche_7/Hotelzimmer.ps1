class Hotel
{
    $rooms = @()

    Hotel([int]$nor)
    {
        for($i = 1; $i -le $nor; $i++){
            $palim = [Room]::new($i, $true)
            $this.rooms += $palim
        }
    }

    [int]checkIn(){

        foreach($room in $this.Rooms)
        {
            if($room.available -eq $true)
            {
                $room.available = $false
                return $room.roomNr
            }
        }

        return 0
    }


    [int]checkOut([int]$roomNr)
    {

        if(($this.rooms[$roomNr-1]).Available -eq $false)
        {
            $this.rooms[$roomNr-1].Available = $true
            return $roomNr

        }

        return 0

    }

}


class Room{
    
    [bool] $available
    [int]$roomNr

    Room($rnbr, $verfuegbar)
    {
        $this.available = $verfuegbar
        $this.roomNr = $rnbr
    }
}


$maritim = [Hotel]::new(10)

$maritim.checkIn()
$maritim.checkIn()
$maritim.checkIn()
$maritim.checkIn()
$maritim.checkIn()
$maritim.checkOut(1)









