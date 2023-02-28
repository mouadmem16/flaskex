FROM python:slim

WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN touch accounts.db && chmod 777 accounts.db
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
