# Generated by Django 3.1.5 on 2021-01-19 21:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('all', '0020_auto_20210120_0914'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='types',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='all.type'),
        ),
    ]