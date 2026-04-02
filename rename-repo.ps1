$token = "29497e4923819657a03bb9358b5c09bf08095fed"
$headers = @{
    Authorization = "token $token"
    Accept = "application/vnd.github.v3+json"
}

$body = @{
    name = "frankbot"
} | ConvertTo-Json

try {
    $result = Invoke-RestMethod -Uri "https://api.github.com/repos/hanyunfan/name-battle" -Method PATCH -Headers $headers -ContentType "application/json" -Body $body
    Write-Output "Renamed to frankbot"
} catch {
    Write-Output "Error: $($_.Exception.Message)"
}
