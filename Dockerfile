FROM python:3.11-alpine
WORKDIR /oFROM python:3.11-alpine

# upgrade pip
RUN pip install --upgrade pip

COPY . .

# venv
ENV VIRTUAL_ENV=/home/app/venv

# python setup
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN export FLASK_APP=wsgi.py

RUN pip install -r requirements.txt

CMD ["python", "wsgi.py"]
