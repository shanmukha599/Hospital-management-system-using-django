FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PORT=8000 \
    FROM_EMAIL=admin@example.com \
    EMAIL_BACKEND=django.core.mail.backends.console.EmailBackend \
    DEFAULT_FROM_EMAIL=admin@example.com \
    SERVER_EMAIL=admin@example.com \
    STRIPE_PUBLIC_KEY= \
    STRIPE_SECRET_KEY= \
    PAYPAL_CLIENT_ID= \
    PAYPAL_SECRET_ID= \
    MAILGUN_API_KEY= \
    MAILGUN_SENDER_DOMAIN=example.com

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && gunicorn hms_prj.wsgi:application --bind 0.0.0.0:${PORT:-8000}"]
