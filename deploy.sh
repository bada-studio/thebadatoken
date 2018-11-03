if [ "$1" = "real" ]
then
  url=https://rpc.eosys.io:443
  contract=thebadatoken
elif [ "$1" = "beta" ]
then
  url=https://api-kylin.eosasia.one
  contract=thebadatoken
elif [ "$1" = "local" ]
then
  url=http://127.0.0.1:8888
  contract=thebadatoken
else
  echo "need phase"
  exit 0
fi

cleos -u $url set contract $contract bada_token -p $contract
