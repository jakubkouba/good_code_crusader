# encoding: utf-8
require 'spec_helper'

describe Refinery do
  describe 'Resumes' do
    describe 'Admin' do
      describe 'resumes', type: :feature do
        # refinery_login

        describe 'Navigation' do
          before { visit refinery.resumes_admin_resumes_path }

          it 'does not display Technology link' do
            expect(page).not_to have_content('Technologies')
          end

          it 'does not display Education link' do
            expect(page).not_to have_content('Educations')
          end

        end

        xdescribe 'resumes list' do
          before do
            create(:resume, :title => 'UniqueTitleOne')
            create(:resume, :title => 'UniqueTitleTwo')
          end

          it 'shows two items' do
            visit refinery.resumes_admin_resumes_path
            expect(page).to have_content('UniqueTitleOne')
            expect(page).to have_content('UniqueTitleTwo')
          end
        end

        xdescribe 'create' do
          before do
            visit refinery.resumes_admin_resumes_path

            click_link 'Add New Resume'
          end

          context 'valid data' do
            xit 'should succeed' do
              fill_in "Title", :with => "This is a test of the first string field"
              expect { click_button 'Save' }.to change(Refinery::Resumes::Resume, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context 'invalid data' do
            it 'should fail' do
              expect { click_button 'Save' }.not_to change(Refinery::Resumes::Resume, :count)

              expect(page).to have_content("Title can't be blank")
            end
          end

          context 'duplicate' do
            before { FactoryBot.create(:resume, :title => 'UniqueTitle') }

            xit 'should fail' do
              visit refinery.resumes_admin_resumes_path

              click_link 'Add New Resume'

              fill_in "Title", :with => "UniqueTitle"
              expect { click_button 'Save' }.not_to change(Refinery::Resumes::Resume, :count)

              expect(page).to have_content('There were problems')
            end
          end

        end

        xdescribe 'edit' do
          before { FactoryBot.create(:resume, :title => 'A title') }

          it 'should succeed' do
            visit refinery.resumes_admin_resumes_path

            within '.actions' do
              click_link 'Edit this resume'
            end

            fill_in "Title", :with => "A different title"
            click_button 'Save'

            expect(page).to have_content("'A different title' was successfully updated.")
            expect(page).not_to have_content('A title')
          end
        end

        xdescribe 'destroy' do
          before { FactoryBot.create(:resume, :title => 'UniqueTitleOne') }

          it 'should succeed' do
            visit refinery.resumes_admin_resumes_path

            click_link 'Remove this resume forever'

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Resumes::Resume.count).to eq(0)
          end
        end

      end
    end
  end
end
