from django.contrib import admin
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('accounts/',include('django.contrib.auth.urls')),
    path('admin/', admin.site.urls),
    path('',include('products.urls',namespace='Products')),
    path('signup/',include('accounts.urls',namespace='Accounts')),

]


urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)