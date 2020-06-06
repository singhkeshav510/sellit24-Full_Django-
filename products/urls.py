from django.urls import path
from . import views
app_name='PrOduct'
urlpatterns= [
    path('',views.home_list,name='home_list'),
    path('products/',views.product_list,name='product_list'),
    path('products/my_ads/',views.my_list,name='my_list'),
    path('products/my_ads/<slug:product_slug>/delete/',views.delete_product,name='delete_product'),
    path('products/my_ads/<slug:product_slug>/edit/',views.edit_product,name='edit_product'),
    path('products/post_ad/',views.post_ad,name='post_product'),
    path('products/<slug:category_slug>',views.product_list,name='product_list_category'),
    path('products/info/<slug:product_slug>',views.product_detail,name='product_detail'),
    path('products/location/<slug:location_slug>',views.product_list,name='product_list_location'),
]