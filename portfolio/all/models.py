from django.db import models
from django.core.validators import RegexValidator, MaxValueValidator, MinValueValidator
from colorfield.fields import ColorField
import datetime
from django.contrib.admin.widgets import AdminDateWidget

def current_year():
    return datetime.date.today().year

def max_value_current_year(value):
    return MaxValueValidator(current_year())(value)   

# Create your models here.
class SocialMedia(models.Model):
    link = models.CharField(max_length=255)
    icon = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Personal(models.Model):
    name = models.CharField(max_length=255)
    position = models.CharField(max_length=255)
    organization = models.CharField(max_length=255)
    email = models.EmailField(max_length=255, unique=True)
    phone_regex = RegexValidator(regex=r'^\+?1?\d{7,10}$', message="Incorrect phone number format.")
    phone = models.IntegerField(validators=[phone_regex], unique=True, blank=True)
    summary = models.TextField()
    location = models.CharField(max_length=255)
    photo = models.ImageField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Type(models.Model):
    name = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

class Skill(models.Model):
    name = models.CharField(max_length=255)
    icon = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Category(models.Model):
    class Meta:
        verbose_name_plural = 'categories'

    name = models.CharField(max_length=255)
    color = ColorField(default='#FF0000')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

class Education(models.Model):
    qualification = models.CharField(max_length=255)
    institution_name = models.CharField(max_length=255)
    from_year = models.PositiveIntegerField(default=current_year(), validators=[MinValueValidator(1984), max_value_current_year])    
    to_year = models.PositiveIntegerField(default=current_year(), blank=True, validators=[max_value_current_year])    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Experience(models.Model):
    position = models.CharField(max_length=500)
    organization = models.CharField(max_length=500)
    from_date = models.DateField()
    to_date = models.DateField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Project(models.Model):
    title = models.CharField(max_length=300)
    description = models.TextField()
    image = models.ImageField()
    link = models.CharField(blank=True, max_length=500)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, default=1)
    types = models.ForeignKey(Type, on_delete=models.CASCADE, default=1)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title  # or you can use any string value instead of campaign_name

class List(models.Model):
    exp_id = models.ForeignKey(Experience, on_delete=models.CASCADE)
    description = models.CharField(max_length=1000, blank=True)
