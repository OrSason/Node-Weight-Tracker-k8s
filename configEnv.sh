
#!/bin/bash


echo "# Host configuration
PORT=8080
HOST=0.0.0.0
NODE_ENV=development
HOST_URL=http://40.67.252.238:8080
COOKIE_ENCRYPT_PWD=superAwesomCOOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong! ePasswordStringThatIsAtLeast32CharactersLong!
# Okta configuration
OKTA_ORG_URL=https://$1
OKTA_CLIENT_ID=$2
OKTA_CLIENT_SECRET=$3
# Postgres configuration
PGHOST=11.0.2.10
PGUSERNAME=postgres
PGDATABASE=postgres
PGPASSWORD=p@ssw0rd42
PGPORT=5432" > .env

cat .env
