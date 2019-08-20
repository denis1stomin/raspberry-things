#!/bin/bash

IP_INFO=$(ip addr show | grep -F "inet ")
PAYLOAD="{ 'text': 'Hello! My inet info:\n\`\`\`$IP_INFO\`\`\`', 'parse': 'full', 'channel': '#$SLACK_CHANNEL', 'username': 'Raspberry PI', 'icon_emoji': ':nerd_face:' }"
curl -X POST -H "Content-Type: application/json" -d "$PAYLOAD" "$SLACK_WEBHOOK"
