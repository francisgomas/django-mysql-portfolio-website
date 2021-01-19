from django.contrib import admin
from django.apps import apps
from .models import *

#configure admin panel
admin.site.site_header = 'MyPortfolio'
admin.site.index_title = 'Administration Panel'

# Register your models here.
class SocialMediaAdmin(admin.ModelAdmin):
    list_display = ('link', 'icon', 'created_at', 'updated_at')

class PersonalAdmin(admin.ModelAdmin):
    list_display = ('name', 'position', 'email', 'phone' ,'created_at', 'updated_at')
    def has_add_permission(self, request):
        # if there's already an entry, do not allow adding
        count = Personal.objects.all().count()
        if count == 0:
            return True
        return False

    def has_delete_permission(self, request, obj=None):
        return False

class PostTypeAdmin(admin.ModelAdmin):
    list_display = ('name', 'created_at', 'updated_at')

class SkillsAdmin(admin.ModelAdmin):
    list_display = ('name', 'icon', 'created_at', 'updated_at')

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'color', 'created_at', 'updated_at')

class EducationAdmin(admin.ModelAdmin):
    list_display = ('qualification', 'institution_name', 'from_year', 'to_year', 'created_at', 'updated_at')
    def clean(self):
        from_year = cleaned_data.get("from_year")
        to_year = cleaned_data.get("to_year")
        if to_year < from_year:
            msg = "To should be greater than from."
            self._errors["to_year"] = self.error_class([msg])

class ListInLine(admin.TabularInline):
    model = List
    extra = 1

class ExperienceAdmin(admin.ModelAdmin):
    inlines = [ListInLine]
    list_display = ('position', 'organization', 'created_at', 'updated_at')

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'category', 'types', 'created_at', 'updated_at')

admin.site.register(SocialMedia, SocialMediaAdmin)
admin.site.register(Personal, PersonalAdmin)
admin.site.register(Skill, SkillsAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Education, EducationAdmin)
admin.site.register(Experience, ExperienceAdmin)
admin.site.register(Project, ProjectAdmin)