# Healthcare Management System

## Description

The Healthcare Management System is a Django web application for managing doctors, patients, appointments, medical records, prescriptions, billing, and notifications. It provides separate interfaces for doctors and patients and includes role-based authentication, profile management, and appointment lifecycle tracking.

## Features
- Custom user model with role-based access for doctors and patients
- Doctor and patient profile management
- Appointment booking, cancellation, rescheduling, and completion tracking
- Medical records, lab tests, and prescriptions tied to appointments
- Billing records and total amount tracking
- Notification system for patients
- Django admin enhanced with Jazzmin theme
- Local media uploads and static file support
- Environment-based configuration using `environs`

## Technologies
- Django 4.2.2
- SQLite database
- Django Jazzmin admin theme
- Django Crispy Forms with Bootstrap 5 support
- Django CKEditor 5
- Django AnyMail
- Django Import Export
- Django ReCaptcha
- Django Storages
- Gunicorn
- Whitenoise

## Requirements
Dependencies are listed in `requirements.txt`. Key packages include:
- `Django==4.2.2`
- `django-jazzmin`
- `django-crispy-forms`
- `django-ckeditor-5`
- `django-anymail`
- `django-import-export`
- `django-recaptcha`
- `django-storages`
- `environs`
- `gunicorn`

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/shanmukha599/healthcare-management-system.git
   cd healthcare-management-system
   ```

2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   .\venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Create a `.env` file at the project root and add required environment variables:
   ```text
   FROM_EMAIL=you@example.com
   EMAIL_BACKEND=django.core.mail.backends.console.EmailBackend
   DEFAULT_FROM_EMAIL=you@example.com
   SERVER_EMAIL=server@example.com
   STRIPE_PUBLIC_KEY=your_stripe_public_key
   STRIPE_SECRET_KEY=your_stripe_secret_key
   PAYPAL_CLIENT_ID=your_paypal_client_id
   PAYPAL_SECRET_ID=your_paypal_secret_id
   MAILGUN_API_KEY=your_mailgun_api_key
   MAILGUN_SENDER_DOMAIN=your_mailgun_domain
   ```

## Database setup
1. Apply migrations:
   ```bash
   python manage.py migrate
   ```

2. Create a superuser:
   ```bash
   python manage.py createsuperuser
   ```

## Run the application
```bash
python manage.py runserver
```
Open `http://127.0.0.1:8000/` in your browser.

## Project structure
- `base/` — core models and appointment-related logic
- `doctor/` — doctor-specific views and models
- `patient/` — patient-specific views and models
- `userauths/` — custom user model and authentication
- `templates/` — HTML templates
- `static/` — CSS and asset files
- `media/` — uploaded images and files

## Notes
- This project uses SQLite by default via `db.sqlite3`.
- Local media files are stored in the `media/` directory.
- Keep `DEBUG=True` only during development.
- The `db.sqlite3` file and `media/` uploads should not be committed to source control.

