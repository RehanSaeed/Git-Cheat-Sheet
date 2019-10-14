param (
    [string]$Path = $null
)

$currentDirectory = $PSScriptRoot;

if ($Path)
{
    $startDirectory = $Path;
}
else 
{
    $startDirectory = $currentDirectory;
}

try {
    foreach ($directory in Get-ChildItem -Path $startDirectory -Directory -Recurse)
    {
        $gitDirectory = Join-Path $directory.FullName '.git';
        if (Test-Path $gitDirectory)
        {
            Write-Output $directory.FullName;
    
            Set-Location $directory.FullName
            git pull
    
            Write-Output '';
            Write-Output '';
        }
    }   
}
finally {
    Set-Location $currentDirectory
}