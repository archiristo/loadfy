FROM python:3.9

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y ffmpeg

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
