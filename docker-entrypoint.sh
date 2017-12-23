echo 'start socat'
socat tcp-listen:80,fork tcp:localhost:9222 &

echo 'start chrome'
if [[ -z "${PROXY}" ]]; then
  echo 'chrome with out proxy'
  /usr/bin/chromium --remote-debugging-port=9222 --headless --no-sandbox --disable-gpu
else
  echo 'chrome with proxy' $PROXY
  /usr/bin/chromium --remote-debugging-port=9222 --headless --no-sandbox --disable-gpu --proxy-server=$PROXY
fi
