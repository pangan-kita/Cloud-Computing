# Gunakan gambar dasar resmi Python
FROM python:3.10-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR /app

# Salin requirements.txt dan instal dependensi
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn --no-cache-dir

# Salin kode aplikasi
COPY . .

ENV PORT 5001

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
