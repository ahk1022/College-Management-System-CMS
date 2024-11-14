FROM python:3.12

WORKDIR /app

COPY . . 


RUN pip install virtualenv
RUN virtualenv env
RUN source env/bin/active
RUN pip install -r requirements.txt

CMD ["python","manage.py"]
