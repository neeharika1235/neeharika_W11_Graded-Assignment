FROM python:latest

COPY app.py ./app.py
COPY requirements.txt ./requirements.txt

WORKDIR /microservices
RUN pip install -r requirements.txt

EXPOSE $PORT
CMD python --workers=4 --bind 0.0.0.0:$PORT microservices:app