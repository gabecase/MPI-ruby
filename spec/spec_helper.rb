require 'rspec'
require 'require_all'
require_relative '../support/source/source'

require_all 'support/views'
require_all 'support/interactions'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation #:progress #:documentation, :html, :textmate
  config.after :all do
    Source::DRIVER.quit
  end
end