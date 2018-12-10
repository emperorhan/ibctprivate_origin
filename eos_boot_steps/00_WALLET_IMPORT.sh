WALLET_PASS="$( jq -r '.WALLET_PASSWD' "00_CONFIG.conf" )"
EOSIO_PRIV="$( jq -r '.EOSIO_PRODUCER_PRIV_KEY' "00_CONFIG.conf" )"

cleos wallet unlock --password $WALLET_PASS

cleos wallet import --private-key $EOSIO_PRIV

