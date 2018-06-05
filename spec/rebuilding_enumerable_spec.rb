require 'spec_helper'
require './rebuilding_enumerable.rb'

describe 'rebuilding_enumerable' do

describe 'test runs' do
it 'runs' do
 expect([2,3,4].run).to eq true
end
end

describe 'count method counts' do
it 'counts' do
expect([2,3,4].count).not_to eq 2 || 4
end
end

describe 'select method selects given condition' do
it 'selects' do
expect([2,3,4].my_select{|i| i > 3}).to be_a Array
end
end

describe 'all method returns boolean' do
it 'return true or false' do
expect(['lions','tigers','bears'].my_all? { |n| n.size > 4}).to equal true
end
end

describe 'none method returns boolean' do
it 'returns true or false' do
expect(['lions','tigers'].my_none? {|x| x.length > 3}).to be false
end
end

describe 'none method returns boolean' do
it 'returns true or false' do
expect([2,3,4].my_each {|i| p i}).to eql [2,3,4]
end
end




end
