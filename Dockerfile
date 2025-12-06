FROM python:3.12-slim

COPY ./requirements.txt /home/requirements.txt
COPY ./main.py /home/main.py

WORKDIR /home

RUN pip install -r ./requirements.txt

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]