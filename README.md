# README

This app allows you to use users (students) and courses in the system. Courses can be assigned to users and you can view courses that a user is enrolled into. There are 2 main URLs (routes) in the app:

* localhost:3000/users
* localhost:3000/courses

In order to use the app, do the following setup

1. Run 'bundle install' in the terminal to install all the gems included in the Gemfile
2. Run rails db:migrate (if migration needed)
3. If you need to start using app from scratch, drop the database using 'rails db:drop' and then run 'rails db:migrate'. Open the server and start creating users and courses. 


There are 2 dummy users and 2 courses already populated in the app
