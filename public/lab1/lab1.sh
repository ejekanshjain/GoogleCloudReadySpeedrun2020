export BUCKET_NAME=
gsutil mb gs://$BUCKET_NAME/
wget --output-document ada.jpg https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ada_Lovelace_portrait.jpg/800px-Ada_Lovelace_portrait.jpg
gsutil cp ada.jpg gs://$BUCKET_NAME
gsutil cp gs://$BUCKET_NAME/ada.jpg gs://$BUCKET_NAME/image-folder/
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/ada.jpg
