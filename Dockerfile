FROM python:3.11.0a5-bullseye
RUN mkdir app
RUN cd app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY /app .
CMD ["flask", "run"]
