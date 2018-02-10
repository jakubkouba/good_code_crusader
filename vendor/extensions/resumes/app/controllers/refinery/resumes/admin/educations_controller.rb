module Refinery
  module Resumes
    module Admin
      class EducationsController < ::Refinery::AdminController

        crudify :'refinery/resumes/education',
                :title_attribute => 'school_name'

        private

        # Only allow a trusted parameter "white list" through.
        def education_params
          params.require(:education).permit(:school_name, :logo_id, :start_date, :end_date, :description)
        end
      end
    end
  end
end
