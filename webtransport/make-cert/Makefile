

usage:
	@echo "usage: make [fp|ex|run]"

run r:
	go run main.go
example ex:
	open https://googlechrome.github.io/samples/webtransport/client.html

cert:
	openssl req -newkey rsa:2048 -nodes -keyout cert.key \
		-x509 -out cert.pem -subj "/CN=Test Certificate" 
hash:
	openssl x509 -pubkey -noout -in cert.pem | openssl rsa -pubin -outform der | openssl dgst -sha256 -binary | base64
fingerprint fp:
	@echo "Enter teamgrit as password"
	openssl pkcs12 -export -in cert.pem -inkey cert.key -out cert.pfx
	openssl pkcs12 -in cert.pfx -nodes | openssl x509 -noout -fingerprint

util:
	pk12util -i cert.pfx -n "Test Certificate" -d nss_db
	certutil -L -d nss_db



