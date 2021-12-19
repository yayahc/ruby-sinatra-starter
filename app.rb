#!/usr/bin/env ruby

require 'sinatra'

get '/' do
	@user = 'Alfred'
	erb:page
end