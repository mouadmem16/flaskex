FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN chown -R root:root /app

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
