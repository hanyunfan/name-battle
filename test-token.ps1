$token = "29497e4923819657a03bb9358b5c09bf08095fed"
$headers = @{
    Authorization = "token $token"
}

$user = Invoke-RestMethod -Uri "https://api.github.com/user" -Headers $headers
Write-Output "User: $($user.login)"
Write-Output "Token is valid"
