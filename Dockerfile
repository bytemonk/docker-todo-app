FROM python:3
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
COPY . /tmp/
RUN python manage.py migrate
EXPOSE 9000
CMD ["python","manage.py","runserver","0.0.0.0:9000"]

