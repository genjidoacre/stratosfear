#!/bin/bash

cd ~/stratosfear/

python -m http.server &
SERVER_PID=$!

sleep 1
zen-browser http://localhost:8000/mestre/main.html

# Keep task alive
wait $SERVER_PID
