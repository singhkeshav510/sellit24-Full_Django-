from django.urls import path
from django.contrib.auth import login,views as auth_views
from . import views


app_name='accOunts'

urlpatterns= [
    path('',views.sign_up,name="sign_up"),

]