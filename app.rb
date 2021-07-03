#!/usr/bin/env ruby

require 'sinatra'

get '/' do
	@user = 'my name is Alfred'
	erb:page
end