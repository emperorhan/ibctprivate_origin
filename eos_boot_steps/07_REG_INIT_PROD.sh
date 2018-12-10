INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "00_CONFIG.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "00_CONFIG.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "00_CONFIG.conf" )"

./cleos.sh system regproducer $INIT_ACCOUNT $INIT_PUB_KEY https://ibct.io/ -p ibctgenesis1
./cleos.sh system delegatebw $INIT_ACCOUNT $INIT_ACCOUNT "1000000.0000 CR" "1000000.0000 CR"
./cleos.sh system voteproducer prods eosio $INIT_ACCOUNT
./cleos.sh system listproducers
