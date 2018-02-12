
FactoryGirl.define do
  factory :employment, :class => Refinery::Resumes::Employment do
    sequence(:company_name) { |n| "refinery#{n}" }
  end
end

