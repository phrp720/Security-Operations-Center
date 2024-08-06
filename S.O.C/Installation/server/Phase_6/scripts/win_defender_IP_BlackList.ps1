New-NetFirewallRule -DisplayName "IP_TO_BLOCK" -Direction Outbound -LocalPort Any -Protocol TCP -Action Block -RemoteAddress {IP_TO_BLOCK}
