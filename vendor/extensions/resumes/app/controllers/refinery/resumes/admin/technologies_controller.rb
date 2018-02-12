module Refinery
  module Resumes
    module Admin
      class TechnologiesController < ::Refinery::AdminController

        crudify :'refinery/resumes/technology'

        private

        # Only allow a trusted parameter "white list" through.
        def technology_params
          params.require(:technology).permit(:title, :logo_id)
        end
      end
    end
  end
end
