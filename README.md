Documentar o que faz

Como fazer para carregar o projeto num pc

Tecnologias utilizadas

Como fazer este projeto passo a passo!



DESIGN & RESPONSIVEE DESIGN

Adicionar na GEMFILE:
	gem "therubyracer"
	gem "less-rails"
	gem "twitter-bootstrap-rails"
	
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ bundle install
Resolving dependencies...
Using rake (10.3.2)
Using i18n (0.6.9)
Using minitest (4.7.5)
Using multi_json (1.8.4)
Using atomic (1.1.14)
Using thread_safe (0.1.3)
Using tzinfo (0.3.38)
Using activesupport (4.0.2)
Using builder (3.1.4)
Using erubis (2.7.0)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using actionpack (4.0.2)
Using mime-types (1.25.1)
Using polyglot (0.3.3)
Using treetop (1.4.15)
Using mail (2.5.4)
Using actionmailer (4.0.2)
Using activemodel (4.0.2)
Using activerecord-deprecated_finders (1.0.3)
Using arel (4.0.2)
Using activerecord (4.0.2)
Using bundler (1.5.3)
Using coffee-script-source (1.7.0)
Using execjs (2.0.2)
Using coffee-script (2.2.0)
Using thor (0.18.1)
Using railties (4.0.2)
Using coffee-rails (4.0.1)
Using hike (1.2.3)
Using jbuilder (1.5.3)
Using jquery-rails (3.1.0)
Using json (1.8.1)
Using pg (0.17.1)
Using tilt (1.4.1)
Using sprockets (2.10.1)
Using sprockets-rails (2.0.1)
Using rails (4.0.2)
Using rails_serve_static_assets (0.0.2)
Using rails_stdout_logging (0.0.3)
Using rails_12factor (0.0.2)
Using rdoc (4.1.1)
Using sass (3.2.14)
Using sass-rails (4.0.1)
Using sdoc (0.4.0)
Using turbolinks (2.2.1)
Using twitter-bootstrap-rails (2.2.8)
Using uglifier (2.4.0)
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.

rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:install
      insert  app/assets/javascripts/application.js
      create  app/assets/javascripts/bootstrap.js.coffee
      create  app/assets/stylesheets/bootstrap_and_overrides.css.less
      create  config/locales/en.bootstrap.yml
        gsub  app/assets/stylesheets/application.css
        gsub  app/assets/stylesheets/application.css
        

rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:layout application fluid
    conflict  app/views/layouts/application.html.erb
Overwrite /home/rui/rails/Fideliza/app/views/layouts/application.html.erb? (enter "h" for help) [Ynaqdh] Y
       force  app/views/layouts/application.html.erb
       

rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed clientes -f
      create  app/views/clientes/index.html.erb
      create  app/views/clientes/new.html.erb
      create  app/views/clientes/edit.html.erb
      create  app/views/clientes/_form.html.erb
      create  app/views/clientes/show.html.erb


