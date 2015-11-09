require 'spec_helper'
describe 'apache_ext' do

  context 'with defaults for all parameters' do
    it { should contain_class('apache_ext') }
  end
end
