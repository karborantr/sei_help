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
echo -e '\e[0m\e[36mmissed block count:\t\t\t \e[0m\e[32mseid q slashing signing-info $(seid tendermint show-validator) -o json | jq '"Missed: " + .missed_blocks_counter + " block"'\e[0m'
