/tool netwatch add comment="server wireguard watchdog enable disable l2tp and ovpn" disabled=yes down-script=":delay 10s\r\
    \n/interface ovpn-server server set enabled=yes\r\
    \n:delay 2s\r\
    \n/interface l2tp-server server set enabled=yes" host=100.100.100.100 http-codes="" interval=10m test-script="" timeout=10s type=simple up-script=":delay 10s\r\
    \n/interface ovpn-server server set enabled=no\r\
    \n:delay 2s\r\
    \n/interface l2tp-server server set enabled=no"
	