#!/usr/bin/env ruby

set :port, 2021
require 'sinatra'

get '/' do
	'hello'
end