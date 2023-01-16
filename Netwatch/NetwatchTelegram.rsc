/tool netwatch
add comment="telegram watchdog" disabled=yes down-script="log warning m\
    essage=REPLACETOSEEINMTKLOG\r\
    \n:local mikrotikserver ([/system identity get name])\r\
    \n:local ttoken \"PUTYOURTOKENHERE\";\r\
    \n:local tchatid \"-PUTYOURCHATID\";\r\
    \n:local ttext \"YOURDOWNTEXTHERE\"; \r\
    \n:global turl \"https://api.telegram.org/bot\$ttoken/sendMessage\?chat_id\
    =\$tchatid&text=\$mikrotikserver-\$ttext\";\r\
    \n/tool fetch url=\"\$turl\" mode=https; \r\
    \n:delay 10s\r\
    \n/file remove [find name~\"sendMessage\"]\r\
    \n" host=100.100.100.100 http-codes="" interval=10m test-script="" \
    timeout=10s type=simple up-script="log warning message=REPLACETOSEEINMTKLO\
    G\r\
    \n:local mikrotikserver ([/system identity get name])\r\
    \n:local ttoken \"PUTYOURTOKENHERE\";\r\
    \n:local tchatid \"-PUTYOURCHATID\";\r\
    \n:local ttext \"YOURDOWNTEXTHERE\"; \r\
    \n:global turl \"https://api.telegram.org/bot\$ttoken/sendMessage\?chat_id\
    =\$tchatid&text=\$mikrotikserver-\$ttext\";\r\
    \n/tool fetch url=\"\$turl\" mode=https; \r\
    \n:delay 10s\r\
    \n/file remove [find name~\"sendMessage\"]\r\
    \n"

