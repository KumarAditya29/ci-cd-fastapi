# Stage 1 - install dependencies
FROM python:3.10-slim AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# Stage 2 - final image
FROM python:3.10-slim

WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY . .

ENV PATH=/root/.local/bin:$PATH

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]