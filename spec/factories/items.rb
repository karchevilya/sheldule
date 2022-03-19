# frozen_string_literal: true

FactoryBot.define do
    factory :item do
      day { Faker::Lorem.word.downcase }
      st1 { Faker::Lorem.word.downcase }
      st2 { Faker::Lorem.word.downcase }
      st3 { Faker::Lorem.word.downcase }
      st4 { Faker::Lorem.word.downcase }
      st5 { Faker::Lorem.word.downcase }
      st6 { Faker::Lorem.word.downcase }
      number { rand 1..20 }
    end
  end
  