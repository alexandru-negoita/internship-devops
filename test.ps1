Write-Output "test"

for (($i = 0); $i -lt 10; $i++) {
    if ($i % 2 -eq 0) {
        $request = Invoke-WebRequest "https://api.open-meteo.com/v1/forecast?latitude=$(50+$i)&longitude=13.41&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"

        $yml = $request.Content | ConvertFrom-Json | ConvertTo-Yaml | Out-File "C:\DevOps-Tasks\Day2T\internship-devops\output$i.yaml"
        Write-Output $yml
    }
    
}


# Write-Output $request.Content