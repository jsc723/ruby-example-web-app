# README

ruby on rails template project
- question & answer website

## Enviroments
ruby 3.0.2
rails 7.0.0

## Rails Notes
config/environments/development.rb
add line
```
config.hosts.clear
```
to allow access to web server

```
#start server
rails s

#create controller
rails g controller [controller_name]
#e.g. 
rails g controller questions
#controller is in app/controllers
#modify the controller to have the following methods
index,show,new,create,edit,update,destroy

#create model
rails g model [model_name] [database schema...]
#e.g.
rails g model Question name:string title:string content:text
rails g model Answer name:string content:text question:references
#generated in app/models/  and  db/migrate/


#update database
rails db:migrate

#db console
rails dbconsole

#config routes
edit config/routes.rb
# auto generate routes for the controller "questions"
add line
resources :questions
#verify routes
rails routes

#views
app/views/[controller]
add html.erb file

#
```