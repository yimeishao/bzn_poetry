require 'pry'
require 'nokogiri'

require_relative "./bzn_poetry/version"
require_relative './bzn_poetry/cli'
require_relative './bzn_poetry/days'
require_relative './bzn_poetry/scraper'

module BznPoetry
  class Error < StandardError; end
  # Your code goes here...
end
