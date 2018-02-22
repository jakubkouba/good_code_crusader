require 'spec_helper'

module Refinery
  module Resumes
    describe Technology do
      describe 'validations', type: :model do

        subject do
          create(:technology, title: 'javascript')
        end

        it { is_expected.to validate_presence_of :title }
        it { is_expected.to validate_presence_of :logo }
        it { is_expected.to be_valid }
        its(:title) { is_expected.to eq 'javascript' }
      end
    end
  end
end
