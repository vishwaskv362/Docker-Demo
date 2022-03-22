FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip install flask
COPY . /opt/
ENTRYPOINT FLASK_APP=/opt/calc.py flask run --host=0.0.0.0 --port=8080