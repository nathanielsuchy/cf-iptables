#Allow Cloudflare IPs
iptables -A INPUT -p tcp -s 173.245.48.0/20 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 103.21.244.0/22 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 103.22.200.0/22 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 103.31.4.0/22 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 141.101.64.0/18 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 108.162.192.0/18 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 190.93.240.0/20 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 188.114.96.0/20 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 197.234.240.0/22 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 198.41.128.0/17 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 162.158.0.0/15 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 104.16.0.0/12 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 172.64.0.0/13 --dport 443 -j ACCEPT
iptables -A INPUT -p tcp -s 131.0.72.0/22 --dport 443 -j ACCEPT

# Drop HTTP and HTTPS for all other IPs
iptables -A INPUT -p tcp -s 0.0.0.0/0 --dport 80 -j DROP
iptables -A INPUT -p tcp -s 0.0.0.0/0 --dport 443 -j DROP