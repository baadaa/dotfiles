## Irrelevant for usage but keeping for archive purposes

As used in the `.zshrc` file
```sh
tle-hana() {
  curl -H "Host: snt-parent-api-prod.mytle.com" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYzMDU2LCJ0aW1lU3RhbXAiOjE2MjI3MjMwMTI5NzcsInR5cGUiOiJQQVJFTlQiLCJpYXQiOjE2MjI3MjMwMTIsImV4cCI6MTYyMjk4MjIxMn0.hygps_5pDYKzn7RBpd4FTP7qKY_ghLcSM_L5RVnmebg" -H "device-id: 8F6AEBB7-3AD3-4881-9FD2-586686534E26" -H "If-None-Match: W/\"293f-YzDN/y88lV3EuuXu09eRF2emiNM\"" -H "Accept-Language: en-US,en;q=0.9" -H "platform: ios" -H "device-name: iPhone14,4" -H "User-Agent: TLE%C2%AE%20Parent/7.1.0.54 CFNetwork/1404.0.5 Darwin/22.3.0" -H "Accept: application/json, text/plain, */*" --compressed "http://snt-parent-api-prod.mytle.com/api/v1/parent/photo-gallery?child_id=293921&page=$1" -o "$1.json"
}

tle-haru() {
  curl -H "Host: snt-parent-api-prod.mytle.com" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYzMDU2LCJ0aW1lU3RhbXAiOjE2MjI3MjMwMTI5NzcsInR5cGUiOiJQQVJFTlQiLCJpYXQiOjE2MjI3MjMwMTIsImV4cCI6MTYyMjk4MjIxMn0.hygps_5pDYKzn7RBpd4FTP7qKY_ghLcSM_L5RVnmebg" -H "device-id: 8F6AEBB7-3AD3-4881-9FD2-586686534E26" -H "If-None-Match: W/\"293f-YzDN/y88lV3EuuXu09eRF2emiNM\"" -H "Accept-Language: en-US,en;q=0.9" -H "platform: ios" -H "device-name: iPhone14,4" -H "User-Agent: TLE%C2%AE%20Parent/7.1.0.54 CFNetwork/1404.0.5 Darwin/22.3.0" -H "Accept: application/json, text/plain, */*" --compressed "http://snt-parent-api-prod.mytle.com/api/v1/parent/photo-gallery?child_id=293922&page=$1" -o "$1.json"
}

tle-both() {
  curl -H "Host: snt-parent-api-prod.mytle.com" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjYzMDU2LCJ0aW1lU3RhbXAiOjE2MjI3MjMwMTI5NzcsInR5cGUiOiJQQVJFTlQiLCJpYXQiOjE2MjI3MjMwMTIsImV4cCI6MTYyMjk4MjIxMn0.hygps_5pDYKzn7RBpd4FTP7qKY_ghLcSM_L5RVnmebg" -H "device-id: 8F6AEBB7-3AD3-4881-9FD2-586686534E26" -H "If-None-Match: W/\"2b65-Yke35jEp1zZQ3azdeBXlZAO5Z2g\"" -H "Accept-Language: en-US,en;q=0.9" -H "platform: ios" -H "device-name: iPhone14,4" -H "User-Agent: TLE%C2%AE%20Parent/7.1.0.54 CFNetwork/1404.0.5 Darwin/22.3.0" -H "Accept: application/json, text/plain, */*" --compressed "http://snt-parent-api-prod.mytle.com/api/v1/parent/photo-gallery?page=$1" -o "$1.json"
}
```
