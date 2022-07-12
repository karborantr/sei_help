sudo wget https://raw.githubusercontent.com/snipeTR/sei_help/main/sei_help.sh> /dev/null 2>&1
chmod +x ./sei_help.sh> /dev/null 2>&1
sudo mv ./sei_help.sh /usr/local/bin/helpsei> /dev/null 2>&1
echo -e '\e[0m\e[31m=============== \e[0m\e[32mCommands that will make your job easier. Please note..\e[0m\e[31m===================\e[0m'
echo -e '\e[0m\e[36mcheck LOGS:\t\t\t\t \e[0m\e[32mjournalctl -ujournalctl -u seid -f -o cat\e[0m'
echo -e '\e[0m\e[36msend sei token to other address:\t \e[0m\e[32mseid tx bank send \033[33;4m<WalletName> <ToAddress> <amount>\e[0m\e[32m000000usei -y\e[0m'
echo -e '\e[0m\e[36mCheck BALANCE:\t\t\t\t \e[0m\e[32mseid query bank balances \033[33;4m<Address>\e[0m\e[32m -o│json | jq -r .balances[0].amount\e[0m'
echo -e '\e[0m\e[36mLearn MONIKER NAME:\t\t\t \e[0m\e[32mseid status 2>&1 | jq -r .NodeInfo.moniker\e[0m'
echo -e '\e[0m\e[36msync info command:\t\t\t \e[0m\e[32mseid status 2>&1 | jq .SyncInfo\e[0m'
echo -e '\e[0m\e[36mwallet list:\t\t\t\t \e[0m\e[32mseid keys list\e[0m'
echo -e '\e[0m\e[36mvalidator info command:\t\t\t \e[0m\e[32mseid status 2>&1 | jq .ValidatorInfo\e[0m'
echo -e '\e[0m\e[36mNode info command:\t\t\t \e[0m\e[32mseid status 2>&1 | jq .NodeInfo\e[0m'
echo -e '\e[0m\e[36mWallet import/recover from mnemonic:\t \e[0m\e[32mseid keys add \033[33;4m<wallet name>\e[0m\e[32m --recover\e[0m'
echo -e '\e[0m\e[36mseid binary path:\t\t\t \e[0m\e[32mtype seid\e[0m'
echo -e '\e[0m\e[36mWallet name info:\t\t\t \e[0m\e[32mseid keys list --output json | jq .[0].name\e[0m'
echo -e '\e[0m\e[36msei testnet address info:\t\t \e[0m\e[32mseid keys list --output json | jq .[0].address\e[0m'
echo -e '\e[0m\e[36msei testnet pubkey info:\t\t \e[0m\e[32mseid keys list --output json | jq .[0].pubkey\e[0m'
echo -e "\e[0m\e[36mstaking delegate:\t\t\t \e[0m\e[32mseid tx staking delegate $SEI_VALOPER_ADDRESS \033[33;4m<amount>\e[0m\e[32m000000usei --from=\033[33;4m<wallet_name>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\e[0m\e[32m --gas=auto\e[0m"
echo -e "\e[0m\e[36mstaking redelegate:\t\t\t \e[0m\e[32mseid tx staking redelegate \033[33;4m<srcValidatorAddress> <destValidatorAddress>\e[0m\e[32m \033[33;4m<amount>\e[0m\e[32m000000usei --from=\033[33;4m<wallet_name>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\e[0m\e[32m --gas=auto\e[0m"
echo -e "\e[0m\e[36mwithdraw all rewards:\t\t\t \e[0m\e[32mseid tx distribution withdraw-all-rewards --from=\033[33;4m<wallet_name>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\e[0m\e[32m --gas=auto\e[0m"
echo -e "\e[0m\e[36mWithdraw rewards with commision:\t \e[0m\e[32mseid tx distribution withdraw-rewards \033[33;4m<ValidatorAddress>\e[0m\e[32m --from=\033[33;4m<wallet_name>\e[0m\e[32m --commission --chain-id=\033[33;4m<chain_id>\e[0m\e[32m\e[0m"
echo -e "\e[0m\e[36mEdit validator:\t\t\t\t\e[0m\e[32m seid tx staking edit-validator --moniker=\033[33;4m<moniker_name>\e[0m\e[32m --website=\033[33;4m<your_website>\e[0m\e[32m --details=\033[33;4m<your_validator_description>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\e[0m\e[32m --from=\033[33;4m<wallet_name>\e[0m"
echo -e "\e[0m\e[36mUnjail validator:\t\t\t\e[0m\e[32m seid tx slashing unjail --broadcast-mode=block --from=\033[33;4m<wallet_name>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\e[0m\e[32m --gas=auto\e[0m"
echo -e "\e[0m\e[36mVote proposals:\t\t\t\t\e[0m\e[32m seid tx gov vote \033[33;4mX\e[0m\e[32m yes --from=\033[33;4m<wallet_name>\e[0m\e[32m --chain-id=\033[33;4m<chain_id>\n\t\t\t\t\t\t\t  ┕━\033[33;4mX\e[0m\e[32m proposal id, check here \033[33;4mhttps://sei.explorers.guru/proposals\e[0m"



