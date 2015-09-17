# source: https://s3.amazonaws.com/developer.getpebble.com/examples/install-script.sh

PEBBLE_SDK_VERSION=3.0

wget https://s3.amazonaws.com/developer.getpebble.com/examples/cpplint.py -O cpplint.py
npm install jshint jshint-stylish-ex

cd ~
wget https://sdk.getpebble.com/download/$PEBBLE_SDK_VERSION?source=travis-examples -O PebbleSDK-$PEBBLE_SDK_VERSION.tar.gz
wget http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk/arm-cs-tools-ubuntu-universal.tar.gz
mkdir ~/pebble-dev
cd ~/pebble-dev
tar -zxf ~/PebbleSDK-$PEBBLE_SDK_VERSION.tar.gz
cd ~/pebble-dev/PebbleSDK-$PEBBLE_SDK_VERSION/
tar -zxf ~/arm-cs-tools-ubuntu-universal.tar.gz
virtualenv --no-site-packages .env
source .env/bin/activate
pip install -r requirements.txt
deactivate
