## Sinatra Ruby Starter

Sinatra, a ruby micro-framework <br>
http://sinatrarb.com <br>
https://fr.wikipedia.org/wiki/Sinatra_(logiciel) <br>
https://github.com/sinatra/sinatra/blob/master/README.fr.md <br>


## 1 - Install Ruby
https://www.ruby-lang.org/fr/downloads/

Make sure ruby is install
```ruby
ruby -v
```

## 2 - Install Sinatra
```bash
$ gem install sinatra
```

## 3 - Create your Sinatra application
Go to your app folder and create the main file of your app like app.rb <br>
Include in this file the following code:
```ruby
require sinatra
get '/' do
	'Hello !'
end
```

## 4 - Run your app
To run your app you must create new files in your folder, name config.ru and GemFile <br>
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

Congratulation your first sinatra app running on localhost:2021 🎉 <br>
Go to your favorit browser and try http://localhost:2021 <br>
To stop your app Ctrl+C


## 5 - erb
erb is template manager use to put your html file (your 'Hello !' for moment), in seperate file wo can  <br> call a css file <br>
So to try erb, in your app.rb replace your 'Hello !' by erb:page like :
```ruby
#!/usr/bin/env ruby

set :port, 2021
require 'sinatra'

get '/' do
	erb:page
end
```
Now let's create your template. <br>
Create new folder, name views <br>
Creat new file, name page.erb in your views folder <br>
Include this following code in your page.erb :
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>My first sinatra app</title>
</head>
<body style="border: 2px solid red;">

	<p id="p-1">Hello 👋</p>

	<style type="text/css">
	#p-1{
		position: absolute;
		top: 10%; left: 50%; transform: translate(-50%, -50%);
		background-color: indigo; color: white;
		border-radius: 5px; padding: 20px;
	}
	</style>

</body>
</html>
```

Run your app
```bash
ruby app.rb
```
Great 🎉

<!-- ## (6) Go further
In your app.rb add :
```ruby
......

get '/' do
	@user = 'User 545' #your name here
	erb:page
......
```
In your page.erb add :
```ruby

``` -->