require 'spec_helper'

module Refinery
  module Resumes
    describe Employment do
      describe 'validations', type: :model do

        subject do
          create(:employment, company_name: 'Company Name')
        end

        it { is_expected.to be_valid }

        it { is_expected.to validate_presence_of :company_name }
        it { is_expected.to validate_presence_of :logo }

        its(:errors) { is_expected.to be_empty }
        its(:company_name) { is_expected.to eq 'Company Name' }
      end
    end
  end
end
