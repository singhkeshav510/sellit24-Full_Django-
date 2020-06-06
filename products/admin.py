from django.contrib import admin
from .models import Product,Category,Brand,Product_Image,Location

admin.site.register(Product)
admin.site.register(Category)
admin.site.register(Brand)
admin.site.register(Product_Image)
admin.site.register(Location)