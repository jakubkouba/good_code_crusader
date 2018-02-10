module Refinery
  module Resumes
    module Admin
      class ResumesController < ::Refinery::AdminController

        crudify :'refinery/resumes/resume'

        private

        # Only allow a trusted parameter "white list" through.
        def resume_params
          params.require(:resume).permit(:title)
        end
      end
    end
  end
end
