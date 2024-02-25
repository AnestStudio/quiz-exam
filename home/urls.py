from django.contrib.auth import views as auth_views
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('upload', views.upload_document, name='upload_document'),

    path('question', views.view_list_question, name='view_list_question'),
    path('question/view/<int:question_id>', views.view_question, name='view_question'),
    path('question/add', views.add_new_question, name='add_new_question'),
    path('question/edit/<int:question_id>', views.view_edit_question, name='view_edit_question'),
    path('question/edit', views.edit_question, name='edit_question'),
    path('question/exam/exits/<int:question_id>', views.check_question_in_exam, name='check_question_in_exam'),
    path('question/delete/<int:question_id>', views.delete_question, name='delete_question'),

    path('exam', views.view_list_exam, name='view_list_exam'),
    path('exam/view/<int:exam_id>', views.view_exam, name='view_exam'),
    path('exam/view/question/<int:exam_id>/<int:question_id>', views.view_question_in_exam,
         name='view_question_in_exam'),
    path('exam/view/question/delete/<int:exam_id>/<int:question_id>', views.delete_question_in_exam,
         name='delete_question_in_exam'),
    path('exam/generate/view', views.view_generate_exam, name='view_generate_exam'),
    path('exam/generate', views.generate_exam, name='generate_exam'),
    path('exam/schedule/exits/<int:exam_id>', views.check_exam_schedule, name='check_exam_schedule'),
    path('exam/delete/<int:subject_id>/<int:exam_id>', views.delete_exam, name='delete_exam'),

    path('exam/schedule', views.schedule_exam, name='schedule_exam'),
    path('exam/schedule/view', views.view_schedule_exam, name='view_schedule_exam'),
    path('exam/schedule/<int:exam_id>', views.view_detail_schedule_exam, name='view_detail_schedule_exam'),
    path('exam/schedule/edit/<int:schedule_exam_id>', views.view_edit_schedule_exam, name='view_edit_schedule_exam'),
    path('exam/schedule/edit', views.edit_schedule_exam, name='edit_schedule_exam'),
    path('exam/schedule/delete/<int:exam_id>/<int:schedule_id>', views.delete_schedule_exam, name='delete_schedule_exam'),

    # Authentication
    path('accounts/login', views.UserLoginView.as_view(), name='login'),
    path('accounts/logout', views.logout_view, name='logout'),
    path('accounts/register', views.register, name='register'),
    path('accounts/password-change', views.UserPasswordChangeView.as_view(), name='password_change'),
    path('accounts/password-change-done', auth_views.PasswordChangeDoneView.as_view(
        template_name='accounts/password_change_done.html'
    ), name='password_change_done'),
    path('accounts/password-reset', views.UserPasswordResetView.as_view(), name='password_reset'),
    path('accounts/password-reset-done', auth_views.PasswordResetDoneView.as_view(
        template_name='accounts/password_reset_done.html'
    ), name='password_reset_done'),
    path('accounts/password-reset-confirm/<uidb64>/<token>/',
         views.UserPasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('accounts/password-reset-complete/', auth_views.PasswordResetCompleteView.as_view(
        template_name='accounts/password_reset_complete.html'
    ), name='password_reset_complete'),
]
