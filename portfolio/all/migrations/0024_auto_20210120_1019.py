# Generated by Django 3.1.5 on 2021-01-19 22:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('all', '0023_auto_20210120_1018'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='image',
            field=models.ImageField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='project',
            name='link',
            field=models.CharField(blank=True, max_length=500),
        ),
    ]
