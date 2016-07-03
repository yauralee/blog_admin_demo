# Add admin page for blog

* add gems in Gemfile
* bundle install and execute migrate for blog 
* add "language" and "category" column to article
* `rails g active_admin:install` to create AdminUser
* `rake db:migrate`and `rake db:seed`
* `rails server`
* visit `http://localhost:3000/admin`and log in as default user:           
 * User:admin@example.com        
 * Passworg:password             
* register existing model Article with Active Admin:          
  `rails generate active_admin:resource Article` 
* refresh browser and there would be an "Articles" bar
* set up strong parameters in app/admin/article.rb
* disable actions on article
* set up "Filters" bar on the right hand side od index screen
* set up variable attributes and save update information

_**问题：**_   
     
* blog中原有的model comment用`rails generate active_admin:resource Comment`加到Active Admin中，会和Active Admin的comment发生冲突，应避免。
