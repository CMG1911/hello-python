FROM python:3.11-alpine
WORKDIR /opt/
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "wsgi.py"]
