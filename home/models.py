from django.contrib.auth.models import User
from django.db import models


class Document(models.Model):
    file = models.FileField(upload_to='documents/')
    uploaded_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        abstract = True


class Subject(models.Model):
    subject_id = models.AutoField(primary_key=True)
    subject_code = models.CharField(max_length=10)
    subject_name = models.CharField(max_length=200)


class UserSubject(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE)


class Question(models.Model):
    question_id = models.AutoField(primary_key=True)
    question = models.TextField()
    answer_list = models.TextField()
    answer = models.CharField(max_length=100)
    mark = models.DecimalField(max_digits=2, decimal_places=2)
    unit = models.CharField(max_length=500)
    mix_choices = models.BooleanField(default=False)
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE)
    image = models.ImageField(upload_to="images/", null=True)


class Exam(models.Model):
    exam_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    exam_code = models.CharField(max_length=100)
    question_count = models.IntegerField()
    exam_duration = models.IntegerField()
    exam_score = models.IntegerField(default=10)
    created_at = models.DateTimeField(auto_now_add=True)


class ExamQuestion(models.Model):
    exam = models.ForeignKey(Exam, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    answer_list = models.TextField()
    answer = models.CharField(max_length=100)


class ExamSchedule(models.Model):
    schedule_id = models.AutoField(primary_key=True)
    exam = models.ForeignKey(Exam, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()


class SubjectExam(models.Model):
    exam = models.ForeignKey(Exam, on_delete=models.CASCADE)
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE)
