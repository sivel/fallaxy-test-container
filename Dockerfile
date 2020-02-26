FROM python:3.8-alpine3.11

ADD constraints.txt /root/constraints.txt

RUN python -m pip install -c /root/constraints.txt flask Flask-SQLAlchemy semantic_version

WORKDIR /usr/src/app
ADD fallaxy.py .

EXPOSE 8080
CMD ["python", "./fallaxy.py"]
