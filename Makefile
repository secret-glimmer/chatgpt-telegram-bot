include .env
export

get-updates:
	curl 'https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/getUpdates'
set-webhook:
	curl 'https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/setWebhook?url=${URL}/telegram-webhook&secret_token=${TELEGRAM_WEBHOOK_SECRET_TOKEN}'
get-webhook-info:
	curl 'https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/getWebhookInfo'
start:
	docker-compose build
	docker-compose up
local:
	docker-compose up -d
	npm run local