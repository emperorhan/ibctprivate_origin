WALLET_PASS="$( jq -r '.WALLET_PASSWD' "00_CONFIG.conf" )"
EOSIO_PRIV="$( jq -r '.EOSIO_PRODUCER_PRIV_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"

# ./cleos.sh wallet unlock --password $WALLET_PASS

./cleos.sh wallet import --private-key $EOSIO_PRIV
./cleos.sh wallet import --private-key $INIT_PRIV_KEY

