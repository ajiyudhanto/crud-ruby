# README

Steps that I do to make this project:
1. rails new .
2. add activeadmin, devise, and sass-rails to gemfile
3. bundle install
4. rails g controller home index
5. rails g active_admin:install
6. rails g scaffold card description:string status:string
7. rails db:migrate