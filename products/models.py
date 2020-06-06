from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify
#For maintaining Timestamp
class TimeStamp(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    class Meta:
        abstract = True


class Product(TimeStamp):
    NEW="New"
    OLD="Old"

    CONDITION=(
        (NEW,"New"),
        (OLD,"Old"),
    )


    name = models.CharField("Name",max_length=60)
    description = models.TextField("Description",max_length=400,blank=True)
    price = models.DecimalField("Price(in ₹)",max_digits=10, decimal_places= 2)
    owner=models.ForeignKey(User, on_delete=models.CASCADE) #product delted when user gets deleted
    category=models.ForeignKey('Category',on_delete=models.SET_NULL,null=True) #product remains,if category deleted
    condition=models.CharField("Condition",max_length=50,choices=CONDITION)
    brand=models.ForeignKey('Brand',on_delete=models.SET_NULL,null=True)
    image=models.ImageField(upload_to='main_product/',blank=True,null=True)
    city_name=models.ForeignKey('Location',on_delete=models.SET_NULL,null=True)
    slug=models.SlugField(blank=True,null=True)
    
    def __str__(self):
        return "{0} : {1}".format(self.name,self.updated.strftime("%c"))

    def save(self,*args,**kwargs):
        if not self.slug and self.name:
            self.slug=slugify("{1} : {0}".format(self.name,self.updated))
        super(Product,self).save(*args,**kwargs)

class Brand(models.Model):
    brand_name=models.CharField(max_length=40)

    def __str__(self):
        return self.brand_name

class Category(models.Model):
    category_name=models.CharField(max_length=40)
    image=models.ImageField(upload_to="category/",blank=True,null=True)
    slug=models.SlugField(blank=True,null=True)

    def __str__(self): 
        return self.category_name

    def save(self,*args,**kwargs):
        if not self.slug and self.category_name:
            self.slug=slugify(self.category_name)
        super(Category,self).save(*args,**kwargs)

    class Meta:
        verbose_name="Category"
        verbose_name_plural="Categories"
    

class Product_Image(models.Model):
    product= models.ForeignKey(Product,on_delete=models.CASCADE)
    image=models.ImageField(upload_to='product/',blank=True,null=True)

    def __str__(self):
        return "{0} : {1}".format(self.product.name,self.product.updated.strftime("%c"))
    
    class Meta:
        verbose_name="Product Image"
        verbose_name_plural="Product Images"

class Location(models.Model):
    city=models.CharField(max_length=40)
    slug=models.SlugField(blank=True,null=True)
    def __str__(self):
        return self.city

    def save(self,*args,**kwargs):
        if not self.slug and self.city:
            self.slug=slugify(self.city)
        super(Location,self).save(*args,**kwargs)
