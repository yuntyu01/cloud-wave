#!/bin/bash

APP_PID=$(pgrep -f streamlit)

if [ -z "$APP_PID" ]; then
  echo "Application is not running"
else
  echo "Killing streamlit processes: $APP_PID"
  echo "$APP_PID" | xargs -r kill -9
  sleep 5
fi

exit 0
