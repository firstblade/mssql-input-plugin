$platform = $ENV:PLATFORM
if ($platform -eq $null) 
{
	$platform = "x64"
}

(New-Object Net.WebClient).DownloadFile("https://mapnik.s3.amazonaws.com/dist/dev/vs2015rc1/mapnik-win-sdk-14.0-$platform-v3.0.0-rc1-1158-g73dbec3.7z", "$pwd\mapnik-win-sdk.7z")
& 7z x .\mapnik-win-sdk.7z "-o$pwd"

