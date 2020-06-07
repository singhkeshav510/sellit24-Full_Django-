from django.shortcuts import render,redirect
from django.http import HttpResponse  #for http response if required
from .models import Product,Category,Product_Image,Location
from django.core.paginator import Paginator
from django.db.models import Count,Q
from datetime import datetime,timedelta
from django.shortcuts import get_object_or_404
from .forms import ProductForm
from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_http_methods

@require_http_methods(["GET",])
@login_required
def product_list(request, category_slug=None,location_slug=None):
    category=None
    city=None
    productlist=Product.objects.all()
    categorylist=Category.objects.annotate(total_products=Count('product'))
    locationlist=Location.objects.annotate(total_products=Count('product'))

    now = datetime.now()
    earlier = now - timedelta(hours=24)
    productbydate=Product.objects.filter(created__range=(earlier,now))[:4]

    if category_slug:
        category=get_object_or_404(Category,slug=category_slug)
        productlist=productlist.filter(category=category)

    if location_slug:
        city=get_object_or_404(Location,slug=location_slug)
        productlist=productlist.filter(city_name=city)

    search_query=request.GET.get('QUERY')
    if search_query:
        productlist=productlist.filter(Q(name__icontains=search_query) | Q(description__icontains=search_query) | Q(brand__brand_name__icontains=search_query) | Q(category__category_name__icontains=search_query) | Q(city_name__city__icontains=search_query))

    paginator = Paginator(productlist, 5)
    page= request.GET.get('page')
    productlist = paginator.get_page(page)
    template='Product/product_list.html'
    context={'product_list':productlist,'category_list':categorylist,'category':category,'product_by_date':productbydate,'city_name':city,'location_list':locationlist}
    return render(request, template , context)


def home_list(request, category_slug=None):
    category=None

    productlist=Product.objects.all()
    categorylist=Category.objects.all()

    now = datetime.now()
    earlier = now - timedelta(hours=24)
    productbydate=Product.objects.filter(created__range=(earlier,now))[:4]

    if category_slug:
        category=get_object_or_404(Category,slug=category_slug)
        productlist=productlist.filter(category=category)

    template='Product/home.html'
    context={'product_list':productlist,'category_list':categorylist,'category':category,'product_by_date':productbydate}
    return render(request, template , context)

@login_required
def product_detail(request,product_slug):
    productdetail=get_object_or_404(Product,slug=product_slug)
    productimages=Product_Image.objects.filter(product=productdetail)
    template='Product/product_detail.html'
    context={'product_detail':productdetail,'product_images':productimages}
    return render(request, template , context)

@login_required
def post_ad(request):
    if request.method == "POST":
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            post = form.save(commit=False)
            post.owner = request.user
            
            post.save()
            return redirect('Products:product_list')
    else:
        form = ProductForm()
        template='Product/post_product.html'
        context={'form':form}
        return render(request, template , context)

@login_required
def my_list(request, category_slug=None,location_slug=None):

    productlist=Product.objects.all()

    productlist=productlist.filter(owner=request.user)
    paginator = Paginator(productlist, 5)
    page= request.GET.get('page')
    productlist = paginator.get_page(page)
    template='Product/my_ads.html'
    context={'product_list':productlist}
    return render(request, template , context)
    
@login_required
def delete_product(request, product_slug):
    productdetail=get_object_or_404(Product,slug=product_slug)
    productdetail.delete()
    return redirect('Products:my_list')

@login_required
def edit_product(request, product_slug):
    productdetail=get_object_or_404(Product,slug=product_slug)
    if request.method == "POST":
        form = ProductForm(request.POST, instance=productdetail)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.save()
            return redirect('Products:product_detail', product_slug=post.slug )
    else:
        form = ProductForm(instance=productdetail)
    return render(request, 'Product/post_product.html', {'form': form})










    