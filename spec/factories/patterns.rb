# frozen_string_literal: true

FactoryBot.define do
  factory :pattern do
    sequence(:name) { |n| "Pattern #{n}" }
    description { 'Some interpretation' }
  end
end
