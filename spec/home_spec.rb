require_relative 'spec_helper'

describe 'Home Page' do

  before :all do
    @base_view = BaseView.new
  end

  it 'loads to home page' do
    @base_view.visit
  end

end