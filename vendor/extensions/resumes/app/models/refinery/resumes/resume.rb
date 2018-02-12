module Refinery
  module Resumes
    class Resume < Refinery::Core::BaseModel
      self.table_name = 'refinery_resumes'


      validates :title, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      has_many :technologies
      accepts_nested_attributes_for :technologies, allow_destroy: true

    end
  end
end
