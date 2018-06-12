#!/bin/bash

if [ "${CIRCLE_BRANCH}" == "development" ]
then
  export api=${api_dev}
elif [ "${CIRCLE_BRANCH}" == "master" ]
then
  export api=${api_master}
else
  export api=${api_master}
fi

echo "Sucessfull build for key: ${api}"

exit 0