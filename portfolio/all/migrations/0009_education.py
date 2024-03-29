# Generated by Django 3.1.5 on 2021-01-12 02:07

import all.models
import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('all', '0008_category_color'),
    ]

    operations = [
        migrations.CreateModel(
            name='Education',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qualification', models.CharField(max_length=255)),
                ('institution_name', models.CharField(max_length=255)),
                ('from_year', models.PositiveIntegerField(default=2021, validators=[django.core.validators.MinValueValidator(1984), all.models.max_value_current_year])),
                ('to_year', models.PositiveIntegerField(default=2021, validators=[django.core.validators.MinValueValidator(1984), all.models.max_value_current_year])),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
