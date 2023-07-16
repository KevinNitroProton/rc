# Rclone-GA
Run your rclone commands on Github Action 

Rclone copy

```
rclone --transfers 8 --auto-confirm --drive-server-side-across-configs copy "source" "destination"
```

Rclone mount for Windows

```
rclone mount CombineNeccessary: Z: --cache-dir "D:\Program Files\Rclone Cache" --vfs-cache-mode full --network-mode --volname "Cloud Storages" --no-modtime --no-checksum --buffer-size=512M --vfs-cache-max-age 72h
```

Rclone mount `.bat` file for Windows

```
@echo off

set website_to_ping=google.com

:CHECK_CONNECTION
ping %website_to_ping% -n 1 > nul
if %errorlevel% neq 0 (
    echo Connection to google.com failed. Retrying in 5 seconds...
    timeout /t 5 > nul
    goto CHECK_CONNECTION
)

echo Connection to google.com successful. Continue with script execution.

start SilentCMD rclone mount CombineNeccessary: Z: --cache-dir "D:\Program Files\Rclone Cache" --vfs-cache-mode full --network-mode --volname "Cloud Storages" --no-modtime --no-checksum --buffer-size=512M --vfs-cache-max-age 72h

start SilentCMD taskkill /f /im SilentCMD.exe /DELAY:2
```
