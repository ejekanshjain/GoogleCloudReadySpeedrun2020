export PROJECT_ID=
export BUCKET_NAME=

mkdir gcf_hello_world
cd gcf_hello_world
wget https://googlecloudreadyspeedrun2020.herokuapp.com/lab4/index.js
gsutil mb -p $PROJECT_ID gs://$BUCKET_NAME
gcloud functions deploy helloWorld \
  --stage-bucket $BUCKET_NAME \
  --trigger-topic hello_world \
  --runtime nodejs6
