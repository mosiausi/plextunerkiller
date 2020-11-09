#!/bin/bash
sudo -i
synoservicecfg --status "pkgctl-Plex Media Server"
synoservicecfg --stop "pkgctl-Plex Media Server"
cat > "/volume1/@appstore/Plex Media Server/Plex Tuner Service" << EOF
#!/bin/bash
exit 0
EOF
chmod +x "/volume1/@appstore/Plex Media Server/Plex Tuner Service"
synoservicecfg --start "pkgctl-Plex Media Server"
synoservicecfg --status "pkgctl-Plex Media Server"
