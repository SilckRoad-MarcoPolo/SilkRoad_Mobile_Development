List<Map<String, dynamic>> jangoBackEndQuestions = [
  {
    'question': 'What is the primary purpose of Django in web development?',
    'options': [
      'A) To provide a framework for client-side scripting',
      'B) To create static HTML websites',
      'C) To facilitate the rapid development of secure and maintainable web applications',
      'D) To manage client-side databases'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'Which design pattern does Django follow?',
    'options': [
      'A) Model-View-Controller (MVC)',
      'B) Model-View-Presenter (MVP)',
      'C) Model-Template-View (MTV)',
      'D) Model-View-ViewModel (MVVM)'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'What command is used to start a new Django project?',
    'options': [
      'A) django-admin startapp',
      'B) django-admin startproject',
      'C) django startproject',
      'D) python manage.py startproject'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'What is the purpose of the INSTALLED_APPS setting in Django?',
    'options': [
      'A) To list the apps that are available for installation',
      'B) To list the apps that are enabled in the project',
      'C) To list the apps that are disabled in the project',
      'D) To list the apps that are installed on the server'
    ],
    'correctAnswer': 1,
  },
  {
    'question':
        'Which file is used to define URL patterns in a Django project?',
    'options': ['A) views.py', 'B) models.py', 'C) urls.py', 'D) settings.py'],
    'correctAnswer': 2,
  },
  {
    'question': 'What is the purpose of Django migrations?',
    'options': [
      'A) To transfer data between different databases',
      'B) To create and apply database schema changes',
      'C) To migrate the project to a different server',
      'D) To update Django to a new version'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'Which Django command is used to create database tables?',
    'options': [
      'A) python manage.py makemigrations',
      'B) python manage.py migrate',
      'C) python manage.py createdatabase',
      'D) python manage.py syncdb'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'What is the purpose of Django\'s ORM?',
    'options': [
      'A) To handle HTTP requests',
      'B) To manage database operations using Python code',
      'C) To render HTML templates',
      'D) To handle user authentication'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'Which template language does Django use by default?',
    'options': [
      'A) Jinja2',
      'B) Mako',
      'C) Django Template Language (DTL)',
      'D) Handlebars'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'What is the purpose of Django\'s admin interface?',
    'options': [
      'A) To provide a user interface for end-users',
      'B) To manage server configurations',
      'C) To provide an interface for developers to manage application data',
      'D) To handle database backups'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'Which HTTP methods are commonly used in Django views?',
    'options': [
      'A) GET and POST only',
      'B) GET, POST, PUT, and DELETE',
      'C) FETCH and SEND',
      'D) READ and WRITE'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'What is the purpose of Django\'s middleware?',
    'options': [
      'A) To handle database connections',
      'B) To process requests and responses globally',
      'C) To manage static files',
      'D) To handle URL routing'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'How does Django handle database connections?',
    'options': [
      'A) It creates a new connection for each request',
      'B) It uses a single, persistent connection',
      'C) It uses connection pooling',
      'D) It doesn\'t handle database connections'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'What is the purpose of Django\'s `manage.py` file?',
    'options': [
      'A) To define models',
      'B) To handle HTTP requests',
      'C) To provide a command-line interface for managing the project',
      'D) To store project settings'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'Which of the following is NOT a built-in Django model field?',
    'options': [
      'A) CharField',
      'B) IntegerField',
      'C) DateTimeField',
      'D) ArrayField'
    ],
    'correctAnswer': 3,
  },
  {
    'question':
        'What is the purpose of Django\'s `get_object_or_404()` function?',
    'options': [
      'A) To retrieve an object from the database or return a 404 error',
      'B) To create a new object if it doesn\'t exist',
      'C) To delete an object if it exists',
      'D) To update an object or create it if it doesn\'t exist'
    ],
    'correctAnswer': 0,
  },
  {
    'question': 'Which of the following is used for form handling in Django?',
    'options': [
      'A) django.forms',
      'B) django.http.forms',
      'C) django.core.forms',
      'D) django.utils.forms'
    ],
    'correctAnswer': 0,
  },
  {
    'question': 'What is the purpose of Django\'s `settings.py` file?',
    'options': [
      'A) To define URL patterns',
      'B) To store project-wide configurations',
      'C) To define database models',
      'D) To handle HTTP requests'
    ],
    'correctAnswer': 1,
  },
  {
    'question': 'Which command is used to create a new app in Django?',
    'options': [
      'A) django-admin startapp',
      'B) python manage.py createapp',
      'C) python manage.py startapp',
      'D) django-admin newapp'
    ],
    'correctAnswer': 2,
  },
  {
    'question': 'What is the purpose of Django\'s `urls.py` file?',
    'options': [
      'A) To define database models',
      'B) To handle form submissions',
      'C) To map URL patterns to views',
      'D) To store project settings'
    ],
    'correctAnswer': 2,
  },
  {
    'question':
        'Which of the following is NOT a valid Django model relationship?',
    'options': [
      'A) OneToOneField',
      'B) ManyToManyField',
      'C) ForeignKey',
      'D) OneToManyField'
    ],
    'correctAnswer': 3,
  },
  {
    'question': 'What is the purpose of Django\'s `context processors`?',
    'options': [
      'A) To handle database queries',
      'B) To add variables to the template context',
      'C) To process form data',
      'D) To handle user authentication'
    ],
    'correctAnswer': 1,
  },
  {
    'question':
        'Which of the following is used for user authentication in Django?',
    'options': [
      'A) django.contrib.auth',
      'B) django.auth',
      'C) django.users',
      'D) django.contrib.users'
    ],
    'correctAnswer': 0,
  },
  {
    'question': 'What is the purpose of Django\'s `signals`?',
    'options': [
      'A) To handle asynchronous tasks',
      'B) To define URL patterns',
      'C) To allow certain senders to notify a set of receivers that some action has taken place',
      'D) To manage database connections'
    ],
    'correctAnswer': 2,
  },
  {
    'question':
        'Which of the following is NOT a valid Django model field option?',
    'options': ['A) null', 'B) blank', 'C) default', 'D) required'],
    'correctAnswer': 3,
  },
  {
    'question': 'What is the purpose of Django\'s `Q objects`?',
    'options': [
      'A) To handle complex database queries',
      'B) To define URL patterns',
      'C) To manage static files',
      'D) To handle form submissions'
    ],
    'correctAnswer': 0,
  },
  {
    'question': 'Which of the following is used for pagination in Django?',
    'options': [
      'A) django.views.pagination',
      'B) django.core.paginator',
      'C) django.utils.paginator',
      'D) django.contrib.pagination'
    ],
    'correctAnswer': 1,
  },
];
