# frozen_string_literal: true

class Wow
  def initialize(file)
    @file = file
  end

  def hello
    'gday mate'
  end

  def goodbye
    "goodbye #{@file}"
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
end
