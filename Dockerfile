FROM python:3.4-alpine
EXPOSE 5000
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN apk add --update bash && rm -rf /var/cache/apk/*
CMD ["python", "app.py"]
