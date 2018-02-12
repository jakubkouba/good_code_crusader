require 'spec_helper'

module Refinery
  module Resumes
    describe Education do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:education,
          :school_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:school_name) { should == "Refinery CMS" }
      end
    end
  end
end
