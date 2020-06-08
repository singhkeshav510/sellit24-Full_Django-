
# Instructions for running Sellit24 or using it on Linux system:
1. git clone [Repo_link](https://github.com/singhkeshav510/sellit24-Full_Django-)
2. Activate Virtualenvironment if required:
                    virtualenv venv
                    source venv/bin/activate
3. Move to project directory
                    cd Sellit-Full_Django-
4. cd sellit24
5. Edit settings.py DATABASES section as per need.
     In this project , My sql was used whose all info were store under /etc/mysql/ in my1.cnf
     One need to set it up as per need of application while reusing code
6. setup Database on system.
7. After all database thing, Just use 
                    python manage.py makemigration
                    python manage.py migrate
                    python manage.py runserver
8. If any error comes , you can google it or mail me <keshavsingh200100@gmail.com>

# Screenshots  
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Home.png "Home Page")
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Ads_list.png "ADS LIST")
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Login.png)
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/My_Ads.png)
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Post_Ad.png)
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Sign_Up.png)
![Alt text](https://github.com/singhkeshav510/sellit24-Full_Django-/blob/master/Screenshots/Reset_Password.png)
In order to get this functionality edit settings.py and add you mail id and change settings of linked mail id with allowance to access api

# Additional
You can even host your django project on [Here](https://www.pythonanywhere.com/) .
## Happy Learning
