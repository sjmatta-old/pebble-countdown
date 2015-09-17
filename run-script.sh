# source: https://s3.amazonaws.com/developer.getpebble.com/examples/run-script.sh

ROOT=`pwd`

# Lint the JS code (if any) with JSHint
node_modules/.bin/jshint \
  --reporter node_modules/jshint-stylish-ex/stylish.js \
  $(find src -iname '*.js'  | tr '\n' ' ')

for file in $(find . -name wscript -print); do
  pushd $(dirname $file)
    # Lint the C code (disabled because there is none)
    #python $ROOT/cpplint.py \
      # $(find src -type f \( -iname \*.c -o -iname \*.h \) | tr '\n' ' ') || { exit 1; }

    # Build the app using Pebble SDK
    ~/pebble-dev/PebbleSDK-3.0/bin/pebble build
  popd
done
