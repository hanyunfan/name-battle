$headers = @{
    Authorization = "token 29497e4923819657a03bb9358b5c09bf08095fed"
    Accept = "application/vnd.github.v3+json"
}

# Make repo public
$body = @{
    name = "name-battle"
    private = $false
} | ConvertTo-Json

$null = Invoke-RestMethod -Uri "https://api.github.com/repos/hanyunfan/name-battle" -Method PATCH -Headers $headers -ContentType "application/json" -Body $body
Write-Output "Made repo public"

# Enable GitHub Pages
$pagesBody = @{
    source = @{
        branch = "main"
        path = "/"
    }
} | ConvertTo-Json

try {
    $null = Invoke-RestMethod -Uri "https://api.github.com/repos/hanyunfan/name-battle/pages" -Method POST -Headers $headers -ContentType "application/json" -Body $pagesBody
    Write-Output "Enabled GitHub Pages"
} catch {
    Write-Output "Pages may already be enabled or error: $_"
}

Write-Output "Done!"
