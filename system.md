# Systemd service
/etc/systemd/system/reddit-monitor.service

# Enable
`systemctl daemon-reload`
`systemctl enable ${service}` to start when system boots
`systemctl start ${service}`
`systemctl status ${service}`
`journalctl -u reddit-monitor`


