#!/bin/bash

STAGE_TYPE=$1
BOT_TOKEN="6993580750:AAHFSwjPMOnm5l_JnGUtRrg07OCbC2V0bOE"
CHAT_ID="1021812806"

URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"

MESSEGE="$STAGE_TYPE stage: $2%0A%0AProject:+$CI_PROJECT_NAME%0AStatus:+$CI_JOB_STATUS%0AURL:+$CI_PROJECT_URL/pipeline/$CI_PIPELINE_ID/"

curl -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSEGE"
