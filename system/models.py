from django.db import models
from datetime import datetime
# Create your models here.

class User(models.Model):
    user_name = models.CharField(primary_key=True, max_length=30)
    password = models.CharField(max_length=30, blank=True, null=True)
    create_time = models.DateTimeField(blank=True, null=True)
    id = models.CharField(max_length=20, blank=True, null=True)
    identity = models.CharField(max_length=30, blank=True, null=True)
    id_number = models.CharField(max_length=18, blank=True, null=True)
    age = models.IntegerField(blank=True, null=True)
    gender = models.CharField(max_length=1, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    true_name = models.CharField(max_length=255, db_collation='utf8mb4_cs_0900_ai_ci', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'users'

class StudentBasic(models.Model):
    user_name = models.CharField(primary_key=True, max_length=255)
    student_id = models.CharField(max_length=255, blank=True, null=True)
    major = models.CharField(max_length=255, blank=True, null=True)
    class_field = models.CharField(db_column='class', max_length=255, blank=True, null=True)  # Field renamed because it was a Python reserved word.
    entrance_time = models.DateTimeField(blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    fee = models.CharField(max_length=255, blank=True, null=True)
    electricity_fee = models.CharField(max_length=255, blank=True, null=True)
    money = models.IntegerField(blank=True, null=True)
    dorm = models.CharField(max_length=255, blank=True, null=True)
    educate_plan = models.CharField(max_length=255, blank=True, null=True)
    score_completed = models.CharField(max_length=255, blank=True, null=True)
    gpa = models.CharField(db_column='GPA', max_length=255, blank=True, null=True)  # Field name made lowercase.
    status = models.CharField(max_length=255, blank=True, null=True)
    tel = models.CharField(max_length=255, blank=True, null=True)
    work_place = models.CharField(max_length=255, blank=True, null=True)
    home = models.CharField(max_length=255, blank=True, null=True)
    name = models.CharField(max_length=255, db_collation='utf8mb4_cs_0900_ai_ci')

    class Meta:
        managed = False
        db_table = 'student_basic'

class StudentCourse(models.Model):
    student_id = models.IntegerField(primary_key=True)
    course_id = models.IntegerField()
    course_score = models.CharField(max_length=255, blank=True, null=True)
    user_name = models.CharField(max_length=30)
    course_name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'student_course'
        unique_together = (('student_id', 'course_id', 'user_name'),)

class Course(models.Model):
    course_id = models.IntegerField(primary_key=True)
    teacher = models.CharField(max_length=255, blank=True, null=True)
    time = models.DateTimeField(blank=True, null=True)
    place = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    credit = models.CharField(max_length=255, blank=True, null=True)
    course_name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'course'


class CourseInfo(models.Model):
    id = models.IntegerField(primary_key=True)
    user_name = models.CharField(max_length=255)
    course_id = models.IntegerField()
    course_name = models.CharField(max_length=255)
    course_time = models.CharField(max_length=255, blank=True, null=True)
    course_place = models.CharField(max_length=255, blank=True, null=True)
    course_type = models.CharField(max_length=255, blank=True, null=True)
    course_teacher = models.CharField(max_length=255, blank=True, null=True)
    course_credit = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'course_info'
        unique_together = (('id', 'course_name'),)


class CourseProgram(models.Model):
    id = models.BigIntegerField(primary_key=True)
    user_name = models.CharField(max_length=255)
    course_id = models.IntegerField()
    course_name = models.CharField(max_length=255)
    course_type = models.CharField(max_length=255)
    course_rank = models.CharField(max_length=255)
    course_length = models.CharField(max_length=255)
    course_choice = models.CharField(max_length=255)
    course_credit = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'course_program'


class CourseScore(models.Model):
    id = models.BigIntegerField(primary_key=True)
    user_name = models.CharField(max_length=30)
    course_id = models.IntegerField()
    course_name = models.CharField(max_length=255)
    course_type = models.CharField(max_length=255)
    course_length = models.CharField(max_length=255)
    course_credit = models.CharField(max_length=255)
    course_score = models.CharField(max_length=255)
    course_ranking = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'course_score'


class CourseTest(models.Model):
    id = models.BigIntegerField(primary_key=True)
    user_name = models.CharField(max_length=255)
    course_id = models.IntegerField()
    course_name = models.CharField(max_length=255)
    course_time = models.CharField(max_length=255)
    course_place = models.CharField(max_length=255)
    course_type = models.CharField(max_length=255)
    course_credit = models.IntegerField()
    course_teacher = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'course_test'

class GraduateEdu(models.Model):
    user_name = models.CharField(primary_key=True, max_length=255)
    further_school = models.CharField(max_length=255, blank=True, null=True)
    further_major = models.CharField(max_length=255, blank=True, null=True)
    further_degree = models.CharField(max_length=255, blank=True, null=True)
    further_full_part_time = models.CharField(max_length=1, db_collation='utf8_bin', blank=True, null=True)
    further_start_time = models.DateField( blank=True, null=True)
    further_graduate_time = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'graduate_edu'


class GraduateJob(models.Model):
    user_name = models.CharField(primary_key=True, max_length=255)
    graduate_employer = models.CharField(max_length=255, blank=True, null=True)
    graduate_job_position = models.CharField(max_length=255, blank=True, null=True)
    graduate_job_start_time = models.DateField(blank=True, null=True)
    graduate_job_end_time = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'graduate_job'


class GraduateReturn(models.Model):
    user_name = models.CharField(primary_key=True,max_length=255, blank=True)
    nationality = models.CharField(max_length=255, blank=True, null=True)
    id_type = models.CharField(max_length=255, blank=True, null=True)
    student_id = models.CharField(max_length=255, blank=True, null=True)
    tel = models.CharField(max_length=255, blank=True, null=True)
    graduate_depart_nation = models.CharField(max_length=255, blank=True, null=True)
    graduate_depart_province = models.CharField(max_length=255, blank=True, null=True)
    graduate_depart_city = models.CharField(max_length=255, blank=True, null=True)
    graduate_return_date = models.DateField(blank=True, null=True)
    graduate_return_time = models.TimeField(blank=True, null=True)
    graduate_return_campus = models.CharField(max_length=255, blank=True, null=True)
    graduate_return_gate = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'graduate_return'


class Applicant(models.Model):
    user_name = models.CharField(primary_key=True, max_length=30, db_column='user_name')
    region = models.CharField(max_length=255, blank=True, null=True, db_column='region')
    graduation_school = models.CharField(max_length=255, blank=True, null=True, db_column='graduation_school')
    major = models.CharField(max_length=255, blank=True, null=True, db_column='major')
    transfer = models.CharField(max_length=255, blank=True, null=True, db_column='transfer')
    remarks = models.TextField(db_column='remarks')
    test_number = models.CharField(max_length=255, blank=True, null=True, db_column='test_number')

    class Meta:
        managed = False
        db_table = 'applicant'


class Applicant_test(models.Model):
    test_number = models.CharField(max_length=255)
    time = models.CharField(max_length=255)
    course = models.CharField(max_length=255)
    place = models.CharField(max_length=255)
    status = models.CharField(max_length=255)
    score = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'applicant_test'


