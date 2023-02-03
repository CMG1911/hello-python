FROM tecktron/python-waitress:latest
RUN pip install flask
COPY wsgi.py /app/
