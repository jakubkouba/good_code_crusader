module Refinery
  module Resumes
    class EmploymentsController < ::ApplicationController

      before_action :find_all_employments
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @employment in the line below:
        present(@page)
      end

      def show
        @employment = Employment.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @employment in the line below:
        present(@page)
      end

    protected

      def find_all_employments
        @employments = Employment.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/employments").first
      end

    end
  end
end
