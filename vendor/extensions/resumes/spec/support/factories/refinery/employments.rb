FactoryBot.define do
  factory :employment, :class => Refinery::Resumes::Employment do
    sequence(:company_name) { |n| "Company_title_#{n}" }
    logo factory: :image
  end
end

