FROM python:3.12

WORKDIR /app

COPY . . 

RUN pip install django==3.2
RUN pip install -r requirements.txt

CMD ["python","manage.py"]
