from email.policy import default
from django.db import models


# Create your models here.
class User(models.Model):
    name = models.CharField(max_length=100)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    branch = models.CharField(max_length=100)
    


class Resume(models.Model):
    prn_number = models.CharField(max_length=100)
    college_id = models.CharField(max_length=100)
    somaiya_id = models.CharField(max_length=100)
    non_somiya_id = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    branch = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    sem1 = models.FloatField(blank=True, null=True)
    sem2 = models.FloatField(blank=True, null=True)
    diploma = models.FloatField(blank=True, null=True)    
    sem3 = models.FloatField(blank=True, null=True)
    sem4 = models.FloatField(blank=True, null=True)
    sem5 = models.FloatField(blank=True, null=True)
    sem6 = models.FloatField(blank=True, null=True)
    sem7 = models.FloatField(blank=True, null=True)
    sem8 = models.FloatField(blank=True, null=True)
    nearest_railway_station = models.CharField(max_length=100,default='None')
    mobile_no = models.CharField(max_length=100,default='None')
    alternate_phone_no = models.CharField(max_length=100,default='None')
    home_Town= models.CharField(max_length=100,default='None')
    agg = models.FloatField(default=0.00)
    average_CGPA = models.FloatField(default=0.00)
    ssc_marks = models.FloatField()
    any_present_kt = models.IntegerField(default=0)
    hsc_marks = models.FloatField(blank=True, null=True)
    oneto6 = models.CharField(max_length=500)
    lock = models.BooleanField()