# encoding: utf-8

Encoding.default_internal, Encoding.default_external = ['utf-8'] * 2

require 'rubygems'
require 'bundler'

Bundler.require

set :mongomapper, "mongomapper://localhost:27017/db"

configure do
  
  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

end

