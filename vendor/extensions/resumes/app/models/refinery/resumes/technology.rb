module Refinery
  module Resumes
    class Technology < Refinery::Core::BaseModel

      validates :title, presence: true, uniqueness: true
      validates :logo, presence: true


      belongs_to :logo, class_name: '::Refinery::Image'
      belongs_to :resume

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:title]

    end
  end
end
