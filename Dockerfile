# Week 15 Break-the-Build target: hardened baseline (passes the gate).
FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY sample-service.py .


EXPOSE 5001
CMD ["python", "sample-service.py"]
