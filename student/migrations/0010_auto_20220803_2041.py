# Generated by Django 3.0 on 2022-08-03 15:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0009_resume_oneto6'),
    ]

    operations = [
        migrations.AddField(
            model_name='resume',
            name='alternate_phone_no',
            field=models.CharField(default='None', max_length=100),
        ),
        migrations.AddField(
            model_name='resume',
            name='mobile_no',
            field=models.CharField(default='None', max_length=100),
        ),
    ]