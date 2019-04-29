REMOTE_LOCATION=ubuntu:~/stevensf

if [ -z "$1" ]; then
    echo "No argument supplied"
    exit 1
fi

if [ ! -d "$1" ]; then
  echo "Invalid directory: $1"
  exit 1
fi
scp -r $1/* $REMOTE_LOCATION
