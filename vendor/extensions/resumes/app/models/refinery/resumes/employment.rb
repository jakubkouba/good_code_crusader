module Refinery
  module Resumes
    class Employment < Refinery::Core::BaseModel


      validates :company_name, presence: true, uniqueness: true
      validates :logo, presence: true

      belongs_to :logo, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
