FROM python:alpine

WORKDIR /
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN mkdir app
COPY . app
ENTRYPOINT ["python3", "-u"]

