from django.conf import settings
from django.conf.urls.static import static
from django.urls import path

from . import views

urlpatterns = [
                  path('', views.dashboard, name='dashboard'),
                  path('endTerm', views.endTerm, name="endTerm"),
                  path('user_display', views.display, name="display"),
                  path('add_admin', views.add_admin, name="add_admin"),
                  path('add_user', views.add_user, name="add_user"),
                  path('add_company', views.add_company, name="add_company"),
                  path('display_company', views.display_company, name="display_company"),
                  path('logout_admin', views.logout_admin, name="logout_admin"),
                  path('student_placed', views.student_placed, name="student_placed"),
                  path('display_placed', views.display_placed, name="display_placed"),
                  path('eligible_pdf', views.pdf, name="pdf"),
                  path('company_details', views.company_details, name="company_details"),
                  path('delete_resume', views.delete_resume, name="delete_resume"),
                  path('delete_user', views.delete_user, name="delete_user"),
                  path('delete_company', views.delete_company, name="delete_company"),
                  path('edit_company', views.edit_company, name="edit_company"),
                  path('check_eligible', views.check_eligible, name="check_eligible"),
                  path('unlockResume', views.unlockResume, name="unlockResume"),
                  path('lockResume', views.lockResume, name="lockResume"),
                  path('add_excel', views.add_excel, name="add_excel"),
                  path('sorting_student', views.sorting_student, name="sorting_student"),
                  path('student_details', views.filled_student, name="filled-student-details")
                  
              ]

urlpatterns+= static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns+= static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)
