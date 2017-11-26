echo 'start socat'
socat tcp-listen:80,fork tcp:localhost:9222 &

echo 'start chrome'
if [[ -z "${PROXY}" ]]; then
  echo 'chrome with out proxy'
  /chrome-linux/chrome --remote-debugging-port=9222  --headless  --no-sandbox
else
  echo 'chrome with proxy' $PROXY
  /chrome-linux/chrome --remote-debugging-port=9222  --headless  --no-sandbox --proxy-server=$PROXY
fi
