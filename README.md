## Sinatra Ruby Starter

Sinatra, a ruby micro-framework
http://sinatrarb.com
https://fr.wikipedia.org/wiki/Sinatra_(logiciel)
https://github.com/sinatra/sinatra/blob/master/README.fr.md (fr)


## (1) Install Ruby
https://www.ruby-lang.org/fr/downloads/

Make sure ruby is install
```ruby
ruby -v
```

## (2) Install Sinatra
```bash
$ gem install sinatra
```

## (3) Create your Sinatra application
Go to your app folder and create the main file of your app like app.rb
Include in this file the following code:
```ruby
require sinatra
get '/' do
	'Hello !'
end
```

## (4) Run your app
To run your app you must create new files in your folder, name config.ru and GemFile
Include this code in your config.ru file
```ruby
require './app.rb'
run Sinatra::Application
```
Include this in your GemFile
```ruby
source 'https://ruby.gems.org'
gem 'sinatra'
```

Before running of your app make: 
```bash
$ bundle install
$ gem update
```

Now run your app
```bash
ruby app.rb
```

Congratulation your first sinatra app running on localhost:2021 🎉
Go to your favorit browser and try localhost:2021
To stop your app Ctrl+C


## (5) erb
erb is use to put your html file (your 'Hello !' for moment), in seperate file wo can call a css file
So to try erb, in your app.rb replace your 'Hello !' by erb:page like :
```ruby
#!/usr/bin/env ruby

set :port, 2021
require 'sinatra'

get '/' do
	erb:page
end
```