FactoryBot.define do
  factory :technology, :class => Refinery::Resumes::Technology do
    sequence(:title) { |n| "Technology_title_#{n}" }
    logo factory: :image
    resume
  end
end

