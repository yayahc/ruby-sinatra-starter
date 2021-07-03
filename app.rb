#!/usr/bin/env ruby

require 'sinatra'

get '/' do
	@user = 'User 404' #your name here
	erb:page
end