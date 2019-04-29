REMOTE_LOCATION="ubuntu:~/stevensf"

if [ -z "$1" ]; then
    echo "No argument supplied"
    exit 1
fi

if [ ! -d "$1" ]; then
  echo "Invalid directory: $1"
  exit 1
fi

rm -rf build
mkdir build
date > build/date
echo $1 > build/response
# cp -r $1 build
cp index.html index.js index.css build
rsync build/* $REMOTE_LOCATION
