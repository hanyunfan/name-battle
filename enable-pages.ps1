$token = "29497e4923819657a03bb9358b5c09bf08095fed"
$headers = @{
    Authorization = "token $token"
    Accept = "application/vnd.github.v3+json"
}

$body = '{"source":{"branch":"master","path":"/"}}'

try {
    $result = Invoke-RestMethod -Uri "https://api.github.com/repos/hanyunfan/name-battle/pages" -Method POST -Headers $headers -ContentType "application/json" -Body $body
    Write-Output "GitHub Pages enabled successfully"
    Write-Output $result
} catch {
    $err = $_.Exception.Response.StatusCode
    Write-Output "Status code: $err"
    Write-Output "Done"
}
