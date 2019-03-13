#!/usr/bin/env bash

set -eux -o

DATE_STR=`date +"%Y%m%d"`
BASE_URL="https://github.com/trending"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


# Trending repositories
curl ${BASE_URL} -o ${DIR}/pages/${DATE_STR}-repositories-day.html
curl ${BASE_URL}"?since=weekly" -o ${DIR}/pages/${DATE_STR}-repositories-week.html
curl ${BASE_URL}"?since=monthly" -o ${DIR}/pages/${DATE_STR}-repositories-month.html

# Trending developers
curl ${BASE_URL}"/developers" -o ${DIR}/pages/${DATE_STR}-developers-day.html
curl ${BASE_URL}"/developers?since=weekly" -o ${DIR}/pages/${DATE_STR}-developers-week.html
curl ${BASE_URL}"/developers?since=monthly" -o ${DIR}/pages/${DATE_STR}-developers-month.html