
from django.shortcuts import render,redirect
from django.contrib.auth import  authenticate
from .forms import SignupForm


from django.contrib.auth.models import User

def sign_up(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('Products:product_list')
    else:
        form = SignupForm()
    return render(request, 'registration/sign_up.html', {'form': form})
