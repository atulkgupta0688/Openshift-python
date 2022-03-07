FROM python:3.11.0a5-bullseye
RUN mkdir app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
CMD ["flask", "run"]
