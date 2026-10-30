# Week 15 Break-the-Build target: hardened baseline (passes the gate).
FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY sample-service.py .

# Non-root user: removing this line is the Task 4 "Trivy config DS-0002" defect.
RUN useradd --uid 10001 --no-create-home appuser
USER 10001

EXPOSE 5001
CMD ["python", "sample-service.py"]
