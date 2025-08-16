FROM python:latest

WORKDIR /app
COPY . .

ENV PYTHONUNBUFFERED=1     PIP_NO_CACHE_DIR=1
RUN pip install flask

EXPOSE 3000
CMD ["python", "app.py"]
