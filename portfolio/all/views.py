from django.shortcuts import render
from .models import *

# Create your views here.
def index(request):
    personal = Personal.objects.get()
    # oldest to most recent skills
    skills = Skill.objects.order_by('created_at')
    # most recent to oldest
    socials = SocialMedia.objects.order_by('-updated_at')
    education_details = Education.objects.order_by('-from_year')
    experiences = Experience.objects.order_by('-from_date').all()
    upcoming_projects = Project.objects.filter(types__in=Type.objects.filter(name__contains="Upcoming")).order_by('-created_at').all()
    featured_projects = Project.objects.filter(types__in=Type.objects.filter(name__contains="Featured")).order_by('-created_at').all()
    other_projects = Project.objects.filter(types__in=Type.objects.filter(name__contains="Others")).order_by('-created_at').all()

    context = {
            'personal': personal, 
            'experiences': experiences, 
            'upcoming_projects': upcoming_projects, 
            'skills': skills, 
            'socials': socials, 
            'education_details': education_details,
            'featured_projects': featured_projects,
            'other_projects': other_projects
        }
    return render(request, 'index.html', context)