# Paso a Paso - Instalación y Configuración

## Dependencias

* PostgreSQL
* Elasticsearch
* Redis
* Ruby version 2.3.0
* Rails 4.2.6

# Comenzar!

**1. Clonar el repositorio**

Browse to where you want the app to live and clone app:

```
git clone https://github.com/deromero/devlixir.git
```

Change directory into the devlixir folder
```
cd devlixir
```


**2. Start the app**

First install all the required gems:
```
bundle install
```

Execute Sidekiq, ElasticSearch and Mailer
```
bundle exec sidekiq -q elastic search -q mailer -c 3
```

Set up and migrate the database:
```
rake db:setup
rake db:migrate
```

Create Index with elasticsearch
```
rake elasticsearch:reindex
```

Lets run the App:
```
rails server
```

Then browse to [http://localhost:3000](http://localhost:3000) to view the app in all its glory. Wait where is that “Hello World!” moment? Time to create the admin account so we can create some posts…

**3. Create an Admin account**

Enter the rails console:

```
rails console
```

Add a new user account replacing your email and password:

```
Admin.create(email: ‘your@email.com’, password: ‘password’, password_confirmation: ‘password’)
```

Close the console:

```
exit
```

Navigate to the Admin dashboard and enter your email and password:

[http://localhost:3000/admins/sign_in](http://localhost:3000/admins/sign_in)

You can now...
- Write new posts
- Feature tags by clicking on the “feature” button when on a tag pages





## Still to come - Things you may want to cover:

* Elasticsearch configuration

* OAuth configuration

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
