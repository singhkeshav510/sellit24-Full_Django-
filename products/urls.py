from django.urls import path
from . import views
app_name='PrOduct'
urlpatterns= [
    path('',views.product_list,name='product_list'),
    path('my_ads/',views.my_list,name='my_list'),
    path('my_ads/<slug:product_slug>/delete/',views.delete_product,name='delete_product'),
    path('my_ads/<slug:product_slug>/edit/',views.edit_product,name='edit_product'),
    path('post_ad/',views.post_ad,name='post_product'),
    path('<slug:category_slug>',views.product_list,name='product_list_category'),
    path('info/<slug:product_slug>',views.product_detail,name='product_detail'),
    path('location/<slug:location_slug>',views.product_list,name='product_list_location'),
]