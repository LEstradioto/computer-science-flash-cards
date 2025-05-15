#!/bin/bash

if [ ! -f /src/db/cards.db ]; then
	cp cards-empty.db /src/db/cards.db
	cp cards-jwasham.db /src/db/cards-simple.db
	cp cards-jwasham-extreme.db /src/db/cards-extreme.db
fi

export CARDS_SETTINGS=/src/config.txt
gunicorn --bind  0.0.0.0:8000 flash_cards:app