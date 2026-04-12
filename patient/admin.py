from django.contrib import admin

# Register your models here.
from patient import models

class PatientAdmin(admin.ModelAdmin):
    list_display=['user','full_name','email','mobile','gender','dob']

class NotifiationAdmin(admin.ModelAdmin):
    list_display=['patient','appointment','type','seen','date']

admin.site.register(models.Patient, PatientAdmin)
admin.site.register(models.Notification, NotifiationAdmin)