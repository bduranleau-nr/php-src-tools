#!/bin/bash

echo -e "dev-img:" >Makefile
echo -e "\t@docker compose --profile dev build php-devenv" >>Makefile
echo -e "" >>Makefile
echo -e "dev-shell: dev-img" >>Makefile
echo -e "\tdocker compose --profile dev up --pull missing --remove-orphans -d" >>Makefile
echo -e "\tdocker compose exec -it php-devenv bash" >>Makefile
