# Your AWS credentials.
#!/bin/sh

export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export AWS_DEFAULT_REGION=us-east-1

# trivial key because its not used
export KEY=1111111111111111111111111111111111111111111111111111111111111111

PID=$(pgrep rudolfs)

if [ -z "$PID" ]
then
  echo "starting S3 LFS server"
  cargo run -- \
    --cache-dir cache \
    --host localhost:8080 \
    --max-cache-size 40GiB \
    --key 1111111111111111111111111111111111111111111111111111111111111111 \
    s3 \
    --bucket sunpacks
else
  echo "S3 LFS server is running"
fi