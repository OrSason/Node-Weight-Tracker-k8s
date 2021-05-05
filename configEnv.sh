
#!/bin/bash

ip=$(curl https://ipinfo.io/ip)
domain= $1
clientid= $2
secret = $3

echo "# Host configuration
PORT=8080
HOST=0.0.0.0
NODE_ENV=development
HOST_URL=http://${ip}:8080
COOKIE_ENCRYPT_PWD=superAwesomCOOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong! ePasswordStringThatIsAtLeast32CharactersLong!
# Okta configuration
OKTA_ORG_URL=https://${domain}
OKTA_CLIENT_ID=${clientid}
OKTA_CLIENT_SECRET=${secret}
# Postgres configuration
PGHOST=11.0.2.10
PGUSERNAME=postgres
PGDATABASE=postgres
PGPASSWORD=p@ssw0rd42
PGPORT=5432" > .env
