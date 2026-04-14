#!/bin/bash
set -e

export CORS_ALLOW_ORIGIN="http://localhost:5173;http://localhost:8080"
PORT=8080
if [ -n "$PORT" ]; then
    PORT="$PORT"
fi


uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips  0.0.0.0/0 --reload