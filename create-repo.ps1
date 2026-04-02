$headers = @{
    Authorization = "token 29497e4923819657a03bb9358b5c09bf08095fed"
    Accept = "application/vnd.github.v3+json"
}

$body = @{
    name = "name-battle"
    description = "SHA256 based name battle game"
    private = $true
} | ConvertTo-Json

$params = @{
    Uri = "https://api.github.com/user/repos"
    Method = "POST"
    Headers = $headers
    ContentType = "application/json"
    Body = $body
}

try {
    $result = Invoke-RestMethod @params
    Write-Output "Repo created: $($result.html_url)"
} catch {
    Write-Output "Error: $($_.Exception.Message)"
    $reader = [System.IO.StreamReader]::new($_.Exception.Response.GetResponseStream())
    $responseBody = $reader.ReadToEnd()
    $reader.Close()
    Write-Output "Response: $responseBody"
}
