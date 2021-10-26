# frozen_string_literal: true

require 'logger'
require 'byebug'
require 'httparty'

Dir['lib/***/*.rb'].each do |file|
  name = file.split('/')
  filename = "#{name[1]}/#{name[2].gsub('.rb', '')}"
  require filename
end

module DesignPattern
  class Error < StandardError; end
end
