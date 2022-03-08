FROM python:3.8-slim-buster
RUN mkdir app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0"]
