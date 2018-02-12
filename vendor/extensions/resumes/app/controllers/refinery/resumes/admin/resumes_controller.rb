module Refinery
  module Resumes
    module Admin
      class ResumesController < ::Refinery::AdminController

        crudify :'refinery/resumes/resume'

        def new
          @resume = Resume.new
          @resume.technologies.build
        end

        private

        # Only allow a trusted parameter "white list" through.
        def resume_params
          params.require(:resume).permit(:title, technologies_attributes: [:id, :title, :logo_id, :_destroy])
        end
      end
    end
  end
end
