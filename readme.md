# Configuración del dns

## En el archivo **db.example.com:**
Creamos la configuración correspondiente de la zona:
~~~
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
~~~
Donde:
~~~
@	IN	NS	ns.example.com.
ns  IN  A   10.1.0.40

Indican que el responsable de la zona es el pc asociado a dicha ip.
~~~

~~~
@	IN	A	10.1.0.4
@	IN	AAAA	::1

Con el @ asocia el nombre de dominio example.com a la ip indicada.
~~~

~~~
primera	IN	CNAME	example.com.
segunda	IN	CNAME	@

Asocian 2 CNAME con el nombre de dominio example.com. (recordar que @ es lo mismo que el nombre de dominio base).
~~~