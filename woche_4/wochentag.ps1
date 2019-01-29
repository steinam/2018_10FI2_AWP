#Berechnung des Wochentags






[int]$t = Read-Host -prompt "Geben Sie einen Tag ein"
[int]$m = Read-Host -prompt "Geben Sie einen Monat ein"

$MerkeMonat = $m;

[int]$j = Read-Host -prompt "Geben Sie das Jahr ein"

if($m -le 2)
{
$m += 10;
$j -= 1;
}
else
{
$m -= 2;
}

[int]$c = $j/100;
[int]$y = $j%100;

[int]$h = (((26 * $m -2)/10) + $t + $y + $y/4 + $c/4 -2 * $c)%7

if($h -lt 0)
{
$h +=7;
}

[string]$Tag = "";
switch($h)
{
0 { $Tag = "Sonntag"; break}

1 { $Tag = "Montag"; break}

2 { $Tag = "Dienstag"; break}

3 { $Tag = "Mittwoch"; break}

4 { $Tag = "Donnerstag";break}

5 { $Tag = "Freitag"; break}

6 { $Tag = "Samstag"; break}
}

Write-Host "Der " + $t +"." + $MerkeMonat + "." + $j + " ist ein " + $Tag