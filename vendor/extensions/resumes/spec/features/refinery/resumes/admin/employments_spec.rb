# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Resumes" do
    describe "Admin" do
      describe "employments", type: :feature do
        refinery_login

        describe "employments list" do
          before do
            FactoryGirl.create(:employment, :company_name => "UniqueTitleOne")
            FactoryGirl.create(:employment, :company_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.resumes_admin_employments_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.resumes_admin_employments_path

            click_link "Add New Employment"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Company Name", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Resumes::Employment, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Resumes::Employment, :count)

              expect(page).to have_content("Company Name can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:employment, :company_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.resumes_admin_employments_path

              click_link "Add New Employment"

              fill_in "Company Name", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Resumes::Employment, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:employment, :company_name => "A company_name") }

          it "should succeed" do
            visit refinery.resumes_admin_employments_path

            within ".actions" do
              click_link "Edit this employment"
            end

            fill_in "Company Name", :with => "A different company_name"
            click_button "Save"

            expect(page).to have_content("'A different company_name' was successfully updated.")
            expect(page).not_to have_content("A company_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:employment, :company_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.resumes_admin_employments_path

            click_link "Remove this employment forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Resumes::Employment.count).to eq(0)
          end
        end

      end
    end
  end
end
