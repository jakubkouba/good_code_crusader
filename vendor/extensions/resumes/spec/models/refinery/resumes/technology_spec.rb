require 'spec_helper'

module Refinery
  module Resumes
    describe Technology do
      describe "validations", type: :model do
        subject do
          FactoryBot.create(:technology,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end
