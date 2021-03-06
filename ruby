Install Nodejs First via NVM
  sudo apt-get install build-essential libssl-dev curl git-core
  git clone git://github.com/creationix/nvm.git ~/.nvm
  nvm install v0.6.18

Install Ruby (For Ubuntu)
  sudo apt-get install ruby

Install rvm
  curl -L https://get.rvm.io | bash -s stable --ruby

Upgrading Ruby
  sudo rvm install 1.9.3 --with-gcc=clang

Use Ruby version
  rvm use 1.9.3

Install Libraries
  sudo gem install rails  --include-dependencies 
  sudo gem install mysql2 #If wrong version of MySql install aka (bit and x) then when mysql2 is install will cause error

Insert configuration into .bashrc
  export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

Create a new project
  rails new project_name

Make connection to mysql server and create database
  rake db:create

Start server
  rails server
  rails server -e production -p 3000

Create a Resource (that represents Object in this Application)
  rails generate scaffold Post name:string title:string content:text

Create a mysql table that represents the Resouce (one created above)
  rake db:migrate

Change / Update table schema
  rails destroy scaffold Posts
  rails generate scaffold Posts name:string title:string content:text newfield:string newfield2:string
  rails db:migrate

Install process handler
  sudo gem install passenger

Porting of existing installation over to new server
  git pull ..
  sudo apt-get install libcurl4-openssl-dev
  sudo gem install unicorn
  bundle install

In production environment
  rake db:migrate RAILS_ENV="production" 

Start process in foreground
  unicorn -p 3000  

Start process in background
  unicorn -D -p 3000

Start process in background in production environment at port 3002
  unicorn -D -p 3002 -E production

Stop process running in background
  sudo kill <process_id>

Update all the routes in the application
  rake routes

======================================= devise ============================================
rails generate devise:install
rails generate devise users
rails generate devise:views
rails generate devise:views users

# Add listing pages to members
rails rails g controller users listing

# Add detail pages to members
rails rails g controller users show


rake routes

# Add user name to user object
rails g migration add_username_to_users name:string

rake db:migrate

Create user
------------------
> user = User.new
> user.email = "anyemail@ddress.com"
> user.password = "test1234"
> user.save
> user.add_role "admin"

Assign role to user
------------------
> ability = Ability.new(user)
> ability.can? :manage, :all
  => true

Find user 
------------------
user = User.find #id

========================== Creating new roles with rolify and cancan =======================
sudo gem install cancan
sudo gem install rolify
#Add cancan and rolify in GemFile
rails generate cancan:ability
rails generate rolify:role
rake db:migrate

========================= Viewing documentation ===================================
gem server

======================== Rails console ============================================
Using help
User help
Method name to show how to use it

List all methods belonging to object
  User.methods

List all properties belonging to object
  User
