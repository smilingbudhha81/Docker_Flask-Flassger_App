#FROM python:3-alpine3.15
#COPY . /app
#EXPOSE 5000
#WORKDIR /app
#RUN pip install -r requirements.txt
#CMD python ./flasggerapp.py

FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
RUN pip install -r requirements.txt
CMD python flask_api.py