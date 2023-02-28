FROM python:slim

WORKDIR /app
RUN chmod -R 777 /app && touch accounts.db
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
RUN ls -larth
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
