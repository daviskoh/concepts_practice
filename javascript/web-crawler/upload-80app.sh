#! /bin/sh

curl -X PUT "https://$EIGHTYLEGS_KEY:@api.80legs.com/v2/apps/$1" \
-H "Content-Type: application/octet-stream" \
--data-binary "@80apps/$1" -i

