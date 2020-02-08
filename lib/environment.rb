require 'pry'
require 'Nokogiri'
require 'open-uri'

require_relative "./bzn_poetry/version"
require_relative './bzn_poetry/cli'
require_relative './bzn_poetry/posts'
require_relative './bzn_poetry/scraper'

module BznPoetry
  class Error < StandardError; end
  # Your code goes here...
end
