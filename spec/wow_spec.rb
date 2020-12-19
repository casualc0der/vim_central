# frozen_string_literal: true

class Wow
  def initialize(file)
    @file = file
  end

  def hello
    'gday mate'.encode
  end

  def goodbye
    return 'goodbye pal' if @file.empty? || @file.is_a?(Array)

    "goodbye #{@file}"
  end
  def filter
    return :rejected if @file.include?('fick')
    :ok
  end
end

RSpec.describe 'Wow' do
  subject { Wow.new(file) }

  context 'it can do the thing' do
    let(:file) { 'hello cobber' }
    it 'can actually do the thing lol' do
      expect(subject.hello).to eq('gday mate')
    end
  end
  context 'it can do something else' do
    let(:file) { 'Eddie' }
    it 'see above' do
      expect(subject.goodbye).to eq('goodbye Eddie')
    end
  end
  context 'ok it can do one more thing' do
    let(:file) { "" }
    it 'calls the user "pal" if no name is supplied' do
      expect(subject.goodbye).to eq('goodbye pal')
    end
  end
  context 'maybe one more before bed!' do
    let(:file) { ['fick', 'hello', 'jelly'] }
    it 'rejects a file if it includes a naughty word' do
      expect(subject.filter).to eq(:rejected)
    end
  end
end
