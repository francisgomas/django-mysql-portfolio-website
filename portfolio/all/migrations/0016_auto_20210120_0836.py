# Generated by Django 3.1.5 on 2021-01-19 20:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('all', '0015_auto_20210120_0825'),
    ]

    operations = [
        migrations.RenameField(
            model_name='project',
            old_name='t',
            new_name='types',
        ),
    ]
