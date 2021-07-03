#!/usr/bin/env ruby

require 'sinatra'

set :port, 5000

get '/' do
	erb:page
end