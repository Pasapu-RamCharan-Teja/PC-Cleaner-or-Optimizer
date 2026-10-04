$BatUrl = "https://raw.githubusercontent.com/Pasapu-RamCharan-Teja/PC-Cleaner-or-Optimizer/refs/heads/main/eagle_rc_cleaner.bat"

# Store the cleaner outside %TEMP%
$CleanerFolder = Join-Path $env:LOCALAPPDATA "EagleRC-Cleaner"
$BatFile = Join-Path $CleanerFolder "Cleaner.bat"

try {
    Write-Host ""
    Write-Host "============================================" -ForegroundColor Green
    Write-Host "       EagleRC's System Cleaner" -ForegroundColor Green
    Write-Host "============================================" -ForegroundColor Green
    Write-Host ""

    # Create working directory
    if (-not (Test-Path $CleanerFolder)) {
        New-Item -ItemType Directory -Path $CleanerFolder -Force | Out-Null
    }

    Write-Host "[~] Downloading latest cleaner..." -ForegroundColor Cyan

    Invoke-WebRequest `
        -Uri $BatUrl `
        -OutFile $BatFile `
        -UseBasicParsing `
        -ErrorAction Stop

    if (-not (Test-Path $BatFile)) {
        throw "Cleaner.bat could not be downloaded."
    }

    Write-Host "[+] Cleaner downloaded successfully." -ForegroundColor Green
    Write-Host "[~] Requesting Administrator permission..." -ForegroundColor Cyan
    Write-Host ""

    # Start the BAT as Administrator and WAIT for the real cleaner
    $Process = Start-Process `
        -FilePath "cmd.exe" `
        -ArgumentList "/d", "/c", "`"$BatFile`"" `
        -Verb RunAs `
        -Wait `
        -PassThru

    Write-Host ""
    Write-Host "============================================" -ForegroundColor Green
    Write-Host "       Cleaner process finished." -ForegroundColor Green
    Write-Host "============================================" -ForegroundColor Green
    Write-Host ""
}
catch {
    Write-Host ""
    Write-Host "============================================" -ForegroundColor Red
    Write-Host "          Cleaner failed." -ForegroundColor Red
    Write-Host "============================================" -ForegroundColor Red
    Write-Host ""
    Write-Host $_.Exception.Message -ForegroundColor Red
}
finally {
    # Remove the downloaded cleaner after it has completely finished
    if (Test-Path $CleanerFolder) {
        Remove-Item $CleanerFolder -Recurse -Force -ErrorAction SilentlyContinue
    }
}