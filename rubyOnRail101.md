# Ruby on Rails

***Creating a new Project***
```
rails new taski
```

```
rails new --help
```

```
rake db:create:all
```


***Starting Rails Server***
```
rails server
or

rails s
```

***Explore the List of Database Rake Tasks***

***App Project Folder Overview***


***Should you Use Scaffolds or Generators***

Scaffolds: add pretty much useless code also
Generators: We will use Generators.


***Creating Your First Rails Scaffold***
```
rails g scaffold Project title:string description:text percent_complete:decimal
```

```
rake db:migrate
```


## Introduction to the Rails Console

```
rails c
```

Sandbox Mode (Any modifications you make will be rolled back on exit)

```
rails c --sandbox
```


***How to Create Records in the Rails Console***


10.times do |project|
Project.create!(title: "Projcect #{project}", description:"Test Description")
end


***How to Update and Delete Records in the Rails Console***
```rails c
```

Project.all

Project.count

p = Project.last
p.update!(title:"Super title")

p.delete

***Advanced Database Queries in the Rails Console***


***Find single record by ID***
Project.find(5)

a = Project.find([5,8])
a.each do |rec|
puts rec.description
end


***Find Record by String***

Project.where(title:"Projcect 8")
Project.where.not(title:"Projcect 8")


## Introduction to Routes in Ruby on Rails


### RESTful Routing in Rails

app/controllers/projects_controller.rb

## How to Create a Custom Controller in Rails


rails g controller Pages contact about home


## How to Create Custom Routes for Non CRUD Pages
get 'about', to:'pages#about'
path: app/controllers/pages_controller.rb

```
def about
    @title = "Muhammad Mohsin Mahmood"
end
```

## How to Set the Homepage for a Rails Application

root "pages#home"


## How to Integrate Routing Redirects in Rails

  get "*path", to:redirect('/error')
  get "blog", to: redirect("https://mohsinmdl.com/docs")

***Overview of the Master Application Layout File***

***How to Use View Partials***
    <%= render 'shared/nav' %>


















