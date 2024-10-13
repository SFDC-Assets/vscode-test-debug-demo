sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p vscode -e test.debug
sf project deploy start
sf data import tree -f data/Account.json
sf org open
