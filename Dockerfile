FROM python:slim

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt && touch accounts.db && chown www-data:www-data accounts.db
COPY . .
CMD [ "python3", "app.py"]
