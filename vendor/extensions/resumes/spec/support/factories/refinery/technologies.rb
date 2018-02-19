
FactoryBot.define do
  factory :technology, :class => Refinery::Resumes::Technology do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

