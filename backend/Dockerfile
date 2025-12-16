
# ---------- STAGE 1: build dependencies ----------
FROM python:3.11-alpine AS builder

WORKDIR /app

# Needed ONLY to build psycopg / other C deps
RUN apk add --no-cache gcc musl-dev libpq-dev

COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


# ---------- STAGE 2: runtime ----------
FROM python:3.11-alpine

WORKDIR /app

# Runtime-only dependency
RUN apk add --no-cache libpq

# Copy installed python packages only
COPY --from=builder /install /usr/local

COPY . .

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

# FROM python:3.11-alpine

# WORKDIR /app

# # Install only runtime deps
# RUN apk add --no-cache gcc musl-dev libpq

# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# EXPOSE 8000

# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]


# FROM python:3.11-slim

# WORKDIR /app

# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# EXPOSE 8000

# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
