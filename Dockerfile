FROM python:3-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY . .

RUN touch accounts.db && chmod a+wr accounts.db

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
