
FactoryGirl.define do
  factory :resume, :class => Refinery::Resumes::Resume do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

