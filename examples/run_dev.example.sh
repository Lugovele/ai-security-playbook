#!/usr/bin/env sh
# Example local development startup script.
# Adapt this file for each project.
# Production startup should use runtime secret injection, not local .env files.

set -eu

ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing .env file for local development."
  echo "Create one from examples/.env.example and replace placeholders locally."
  exit 1
fi

# Load local development variables without printing them.
set -a
. "$ENV_FILE"
set +a

: "${APP_ENV:?APP_ENV is required}"
: "${API_BASE_URL:?API_BASE_URL is required}"
: "${DATABASE_URL:?DATABASE_URL is required}"
: "${EXTERNAL_API_KEY:?EXTERNAL_API_KEY is required}"

if [ "$EXTERNAL_API_KEY" = "replace-with-runtime-secret" ]; then
  echo "EXTERNAL_API_KEY still contains the example placeholder."
  exit 1
fi

# Replace this with the project-specific development command.
exec ./start-dev
