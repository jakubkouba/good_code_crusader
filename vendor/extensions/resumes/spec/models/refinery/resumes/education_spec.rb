require 'spec_helper'

module Refinery
  module Resumes
    describe Education do

      describe 'validations', type: :model do
        subject { create(:education, school_name: 'CVUT') }

        it { is_expected.to be_valid }
        its(:errors) { is_expected.to be_empty }
        its(:school_name) { is_expected.to eq 'CVUT' }
      end
    end
  end
end
