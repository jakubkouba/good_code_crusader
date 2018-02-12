module Refinery
  module Resumes
    class Education < Refinery::Core::BaseModel


      validates :school_name, :presence => true, :uniqueness => true

      belongs_to :logo, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
