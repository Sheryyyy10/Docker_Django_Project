from django.shortcuts import render
from django.shortcuts import render, redirect
from .forms import ContactForm

def home(request):
    return render(request, 'app/home.html')




def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('contact')
    else:
        form = ContactForm()
    return render(request, 'app/contact.html', {'form': form})
