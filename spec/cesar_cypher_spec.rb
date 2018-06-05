require 'spec_helper'
require './cesar_cypher.rb'

describe 'cesar_cypher' do

describe '.cesar_cipher' do
it 'shifts letter 5 places' do
 expect(cesar_cipher("What a string!",5)).to eq "Bmfy f xywnsl!"
end
end

describe '.cesar_cipher' do
it 'a shifts/capitalizees first letter' do
expect(cesar_cipher("a",5)).to eq 'F'
end
end

describe '.cesar_cipher' do
it 'symbols maintain integrity' do
expect(cesar_cipher("Fun!",5)).to eq 'Kzs!'
end
end

describe '.cesar_cipher' do
it 'works with start/end of alphabet' do
expect(cesar_cipher("az",5)).to eq 'Fe'
end
end

describe '.cesar_cipher' do
it 'capitalizes lowercase/vice versa' do
expect(cesar_cipher("tEST",5)).to eq 'Yjxy'
end
end

describe '.cesar_cipher' do
it 'shifts letters throughout alphabet' do
expect(cesar_cipher("Whine",26)).to eq 'Whine'
end
end




end
