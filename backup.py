import boto3

Filename = "wert.tar.gz"
Bucket = "saibucket0123456789"
Key = "backups/wert.tar.gz"

a = boto3.client('s3')

a.upload_file(Filename, Bucket, Key)

print("upload success")

