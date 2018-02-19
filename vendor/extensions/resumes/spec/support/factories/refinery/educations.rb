
FactoryBot.define do
  factory :education, :class => Refinery::Resumes::Education do
    sequence(:school_name) { |n| "School_Name_#{n}" }
    association :logo, factory: :image
  end
end

