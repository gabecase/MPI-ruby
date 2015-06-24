require 'pry'
require_relative '../../source/source'

class BaseView
  include Source
  @base_url = 'https://stark-gorge-9370.herokuapp.com/'
  @@url = @base_url

  def source
    Source::DRIVER
  end

  def path(relative_url)
    @@url = @base_url + relative_url
  end

  def visit
    source.navigate.to @@url
  end
end