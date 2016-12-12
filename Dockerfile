FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN apk add --update bash && rm -rf /var/cache/apk/*
CMD ["python", "app.py"]
