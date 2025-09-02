$TTL	604800
@	IN	SOA	ns1.jorgecortes.com. root.jorgecortes. (
			 2025082502	; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@		IN	NS	ns1.jorgecortes.com.
@		IN	A	192.168.56.20
ns1		IN	A	192.168.56.20
servidor1	IN	A	192.168.56.20
cliente1	IN	A	192.168.56.21
www		IN	CNAME	servidor1
parcial		IN	A	192.168.56.20
