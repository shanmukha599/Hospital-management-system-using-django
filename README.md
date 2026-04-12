#Healthcare Management System
##Description
The Healthcare Management System (HMS) is a comprehensive Django-based web application designed to streamline healthcare operations. It facilitates user authentication, profile management for doctors and patients, appointment scheduling, medical record-keeping, lab test management, prescriptions, and billing. The system supports role-based access, ensuring doctors and patients have tailored interfaces for their needs. Built with modern web technologies, it includes features like rich text editing, CAPTCHA for security, and responsive UI components.

This project aims to digitize and simplify healthcare workflows, making it easier for medical professionals to manage patient interactions and for patients to access healthcare services efficiently.


##Features
- **User Authentication & Roles:** Custom user model with email-based login, supporting Doctor and Patient roles.
- **Doctor Management**: Profiles with details like specialization, qualifications, experience, and availability.
- **Patient Management**: Comprehensive patient profiles including medical history and contact information.
- **Appointment Scheduling**: Book, manage, and track appointments with status updates (Scheduled, Completed, Pending, Cancelled).
- **Medical Services**: Define services with costs and assign available doctors.
- **Medical Records**: Store diagnosis, treatment notes, lab tests, and prescriptions per appointment.
- **Billing System**: Generate bills with tax calculations and payment tracking.
- **Notifications**: Real-time notifications for appointment updates.
- **Admin Dashboard**: Enhanced Django admin with Jazzmin theme for easy management.
- **Security**: Integrated reCAPTCHA for form protection.
- **Media Handling**: File uploads for images and documents using Django Storages (AWS S3 compatible).
- **Responsive UI**: Built with Crispy Forms and Bootstrap for a clean, mobile-friendly interface.
