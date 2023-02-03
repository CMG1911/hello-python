FROM python:3.11-slim
WORKDIR /opt/flask/
COPY . .
RUN pip install flask
CMD ["python","./wsgi.py"]
