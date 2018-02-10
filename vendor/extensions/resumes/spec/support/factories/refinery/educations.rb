
FactoryGirl.define do
  factory :education, :class => Refinery::Resumes::Education do
    sequence(:school_name) { |n| "refinery#{n}" }
  end
end

