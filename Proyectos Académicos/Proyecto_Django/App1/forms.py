from django import forms
from .models import Clientes

class AgregarClientes(forms.ModelForm):
    class Meta:
        model = Clientes
        fields = ['Nombre', 'Apellidos', 'Correo', 'TipoCliente']
        labels = {
            'Nombre': 'Escribe tu nombre',
            'Apellidos': 'Escribe tus apellidos',
            'Correo': 'Escribe tu correo electrónico',
            'TipoCliente': 'Escribe el tipo de cliente',
        }
