require 'pry'
require 'Nokogiri'
require 'open-uri'
require 'colorize'

require_relative "./bzn_poetry/version"
require_relative './bzn_poetry/cli'
require_relative './bzn_poetry/post'
require_relative './bzn_poetry/scraper'
# require_relative './bzn_poetry/posts'
# require_relative './bzn_poetry/poems'

module BznPoetry
  class Error < StandardError; end
  # Your code goes here...
end
