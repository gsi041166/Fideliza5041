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

rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed perfils -f
       force  app/views/perfils/index.html.erb
       force  app/views/perfils/new.html.erb
       force  app/views/perfils/edit.html.erb
       force  app/views/perfils/_form.html.erb
       force  app/views/perfils/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed sexos -f
       force  app/views/sexos/index.html.erb
       force  app/views/sexos/new.html.erb
       force  app/views/sexos/edit.html.erb
       force  app/views/sexos/_form.html.erb
       force  app/views/sexos/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed grupoclientes -f
       force  app/views/grupoclientes/index.html.erb
       force  app/views/grupoclientes/new.html.erb
       force  app/views/grupoclientes/edit.html.erb
       force  app/views/grupoclientes/_form.html.erb
       force  app/views/grupoclientes/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed localidades -f
       force  app/views/localidades/index.html.erb
       force  app/views/localidades/new.html.erb
       force  app/views/localidades/edit.html.erb
       force  app/views/localidades/_form.html.erb
       force  app/views/localidades/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed lojas -f
       force  app/views/lojas/index.html.erb
       force  app/views/lojas/new.html.erb
       force  app/views/lojas/edit.html.erb
       force  app/views/lojas/_form.html.erb
       force  app/views/lojas/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed pais -f
       force  app/views/pais/index.html.erb
       force  app/views/pais/new.html.erb
       force  app/views/pais/edit.html.erb
       force  app/views/pais/_form.html.erb
       force  app/views/pais/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed profissaos -f
       force  app/views/profissaos/index.html.erb
       force  app/views/profissaos/new.html.erb
       force  app/views/profissaos/edit.html.erb
       force  app/views/profissaos/_form.html.erb
       force  app/views/profissaos/show.html.erb
rui@rui-Aspire-M3-581T:~/rails/Fideliza$ rails g bootstrap:themed vendedors -f
       force  app/views/vendedors/index.html.erb
       force  app/views/vendedors/new.html.erb
       force  app/views/vendedors/edit.html.erb
       force  app/views/vendedors/_form.html.erb
       force  app/views/vendedors/show.html.erb
       
       
       

