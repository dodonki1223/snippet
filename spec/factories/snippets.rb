# frozen_string_literal: true

FactoryBot.define do
  factory :snippet do
    title { 'MyString' }
    language { 'MyString' }
    contents { 'MyString' }
  end
end
