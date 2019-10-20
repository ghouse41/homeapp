from django.shortcuts import render
from rest_framework.response import Response
from django.http import JsonResponse

# Create your views here.
from rest_framework import views
from .models import Herb
from .serializer import HerbSerializer

class VegitablesView(views.APIView):
    def get(self,request):
        herbs = Herb.objects.all()
        serializer = HerbSerializer(herbs, many=True)
        return JsonResponse(serializer.data, safe=False)