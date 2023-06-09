from django.db import models
from student.models import User


# Create your models here.
class Admin(models.Model):
    name = models.CharField(max_length=200)
    username = models.CharField(max_length=200)
    password = models.CharField(max_length=100)
    dept = models.CharField(max_length=100)
    role = models.CharField(max_length=100)
    admin_type=models.CharField(max_length=100)

class Company(models.Model):
    comp_name = models.CharField(max_length=100)
    comp_profile = models.CharField(max_length=100)
    ctc = models.CharField(max_length=100,default="")
    required_any_live_kt = models.IntegerField(default=0)
    eligibility = models.FloatField()
    bond = models.CharField(max_length=100)
    date = models.DateField(auto_now=False)
    time = models.TimeField(auto_now=False)
    venue = models.TextField(max_length=200)
    branch = models.CharField(max_length=100)
    instruction = models.CharField(max_length=200)
    campus = models.CharField(max_length=100)

class mailResponse(models.Model):
    comp_name = models.CharField(max_length=100)
    stud_user = models.CharField(max_length=100)
    token = models.CharField(max_length=200)
    stud_response = models.CharField(max_length=100)
    time = models.DateTimeField(auto_now=True)


class resetPassword(models.Model):
    username = models.CharField(max_length=100)
    token = models.CharField(max_length=200)
    time = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    getTime = models.CharField(max_length=100)


class StudentsEligible(models.Model):
    stud_name = models.CharField(max_length=100)
    branch = models.CharField(max_length=100)
    stud_user = models.CharField(max_length=100)
    comp_name = models.CharField(max_length=100)


class StudentPlaced(models.Model):
    stud_name = models.CharField(max_length=100)
    branch = models.CharField(max_length=100)
    id_no = models.CharField(max_length=100)
    ctc = models.IntegerField()
    stud_user = models.CharField(max_length=100)
    comp_name = models.CharField(max_length=100)