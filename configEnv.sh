
#!/bin/bash


echo "# Host configuration
PORT=8080
HOST=0.0.0.0
NODE_ENV=development
HOST_URL=https://${HOST_URL}
COOKIE_ENCRYPT_PWD=superAwesomCOOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong!
OKTA_ORG_URL=https://${OKTA_ORG_URL}
OKTA_CLIENT_ID=${OKTA_CLIENT_ID}
OKTA_CLIENT_SECRET=${OKTA_CLIENT_SECRET}
# Postgres configuration
PGHOST=${PGHOST}
PGUSERNAME=postgres
PGDATABASE=postgres
PGPASSWORD=${PGPASSWORD}
PGPORT=5432" > .env

cat .env
