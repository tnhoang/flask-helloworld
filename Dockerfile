FROM python:3.7-slim

WORKDIR /app
ENV FLASK_APP=src/main.py  

COPY ./src ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

