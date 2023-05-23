# Rclone-GA
Run your rclone commands on Github Action 

Rclone copy

```
rclone copy --transfers 16 --auto-confirm "source" "destination"
```

Rclone mount for Windows

```
rclone mount CombineNeccessary: A: --cache-dir "D:\Program Files\Rclone Cache" --vfs-cache-mode full --network-mode --volname "Cloud Storages" --no-modtime --no-checksum --buffer-size=0 --vfs-cache-max-age 72h
```