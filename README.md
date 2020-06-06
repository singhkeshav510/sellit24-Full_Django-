# sellit24-Full_Django-
Implemented fully in django
## How to setup(on Linux)
1. git clone (copy-repository link)
2. setup virtual environment(if)
3. Install django versionXX
5. Make changes as per db in settings.py or if mysql then :
    5.1 Terminal cmd: sudo vim /etc/mysql/my1.cnf
    5.2 Add info to it :!includedir /etc/mysql/conf.d/
                        !includedir /etc/mysql/mysql.conf.d/
                          [client]
                          database = 'xxxxxx'
                          user = 'xxxx'
                          password = 'xxxxxx'
                          default-character-set = utf8

6. create superuser for django administration
7. move to directory containing manage.py
8. Type cmd: python manage.py makemigrations followed by python manage.py migrate followed by python manage.py runserver,
## Check if server starts running then move to specified link : 
    Add /products in url
   ## Here you got Sellit24 running.
