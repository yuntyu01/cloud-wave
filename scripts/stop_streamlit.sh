#!/bin/bash
APP_PID=$(pgrep streamlit)

if [ -z "$APP_PID" ]; then
  echo "Application is not running"
else
  echo "Kill -9 $APP_PID"
  # 모든 프로세스에 대해 kill 실행
  for PID in $APP_PID
  do
    kill -9 $PID
  done
  sleep 5
fi

exit 0
