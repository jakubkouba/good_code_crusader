module Refinery
  module Resumes
    module Admin
      class EmploymentsController < ::Refinery::AdminController

        crudify :'refinery/resumes/employment',
                :title_attribute => 'company_name'

        private

        # Only allow a trusted parameter "white list" through.
        def employment_params
          params.require(:employment).permit(:company_name, :logo_id, :start_date, :end_date, :position, :description)
        end
      end
    end
  end
end
