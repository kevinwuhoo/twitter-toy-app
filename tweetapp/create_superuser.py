from django.contrib.auth.models import User

if not User.objects.filter(username='leeroyjenkins').exists():
    User.objects.create_superuser('leeroyjenkins', 'leeroy@jenkins.com', 'hunter2')
else:
    print('Superuser already exists.')
