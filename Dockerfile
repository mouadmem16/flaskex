FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN adduser -D user && \
    chown -R user:user /app && \
    chmod -R 777 /app && \
    chown -R root:root /app
USER user

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
