from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name = 'index'),
    path('clientes/', views.clientes, name = 'clientes'),
    path('clientes/agregar/', views.agregar_cliente, name = 'agregarClientes'),
    path('clientes/editar/<int:id>/', views.editar_cliente, name='editar_cliente'),
    path('clientes/eliminar/<int:id>/', views.eliminar_cliente, name='eliminarCliente'),
]

