from django.urls import path

from api import views


urlpatterns = [
    path('vegitables/',views.VegitablesView.as_view(),name='vegitables')
]