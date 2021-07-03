#!/usr/bin/env ruby

require 'gemfile'
require 'sinatra'

get '/' do
	erb:page
end