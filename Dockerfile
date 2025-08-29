FROM python:3.11-slim

WORKDIR /app
COPY pyproject.toml ./
RUN pip install --no-cache-dir .
COPY src ./src
COPY data ./data
COPY ui ./ui

EXPOSE 8000
CMD ["uvicorn", "pricing_service.server:app", "--host", "0.0.0.0", "--port", "8000"]
