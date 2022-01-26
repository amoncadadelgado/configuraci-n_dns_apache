;
; BIND data file for example.com
;
$TTL	604800
@	IN	SOA	example.com. root.example.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; registro ns responsable de la zona.
@	IN	NS	ns.example.com.
ns  IN  A   10.1.0.40

; @	IN	A	10.1.0.4 Asocia el dominio example.com al servidor apache.
@	IN	A	10.1.0.4
@	IN	AAAA	::1

primera	IN	CNAME	example.com.
segunda	IN	CNAME	@