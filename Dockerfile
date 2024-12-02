
FROM python:3.11.9

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8080"]

