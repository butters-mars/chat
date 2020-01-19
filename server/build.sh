GOOS=linux GOARCH=amd64 go build \
  -ldflags "-X main.buildstamp=`git describe --tags`" \
  -tags mongodb 
gcloud compute scp server kito-01:app/tinode/s1
rm ./server
