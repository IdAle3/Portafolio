from django.shortcuts import render, redirect, get_object_or_404
from .models import Clientes
from .forms import AgregarClientes

# Create your views here.


def index (request):
    return render(request, 'index.html')

def clientes(request):
    cliente = Clientes.objects.all()
    return render(request, 'clientes.html', {'clientes': cliente})

def agregar_cliente(request):
    if request.method == 'POST':
        form = AgregarClientes(request.POST)
        if form.is_valid():
            nuevo_cliente = Clientes(
                Nombre=form.cleaned_data['Nombre'],
                Apellidos=form.cleaned_data['Apellidos'],
                Correo=form.cleaned_data['Correo'],
                TipoCliente=form.cleaned_data['TipoCliente']
            )
            nuevo_cliente.save()
            return redirect('clientes')  
    else:
        form = AgregarClientes()
    
    return render(request, 'agregarClientes.html', {'form': form})


def editar_cliente(request, id):
    cliente = get_object_or_404(Clientes, id=id)

    if request.method == 'POST':
        form = AgregarClientes(request.POST, instance=cliente)
        if form.is_valid():
            form.save()
            return redirect('clientes')
    else:
        form = AgregarClientes(instance=cliente)

    return render(request, 'editar_cliente.html', {'form': form})

def eliminar_cliente(request, id):
    cliente = get_object_or_404(Clientes, id=id)

    if request.method == 'POST':
        cliente.delete()
        return redirect('clientes')

    return render(request, 'confirmar_eliminar.html', {'cliente': cliente})

