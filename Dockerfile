FROM python:3.6-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
Run pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
