from django.db import models
from datetime import datetime
# Create your models here.

class User(models.Model):
    user_name = models.CharField(max_length=30, db_column='user_name')
    password = models.CharField(max_length=30, db_column='password')
    create_time = models.DateTimeField(default=datetime.now().date(), db_column='create_time')
    identity = models.CharField(max_length=20, db_column='identity')
    id_number = models.CharField(max_length=18, db_column='id_number')
    age = models.IntegerField(db_column='age')
    gender = models.BinaryField(db_column='gender')
    email = models.CharField(max_length=255, db_column='email')

    class Meta(object):
        db_table = 'users'

