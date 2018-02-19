require 'spec_helper'

module Refinery
  module Resumes
    describe Employment do
      describe "validations", type: :model do
        subject do
          FactoryBot.create(:employment,
          :company_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:company_name) { should == "Refinery CMS" }
      end
    end
  end
end
