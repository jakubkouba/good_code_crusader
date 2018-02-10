# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Resumes" do
    describe "Admin" do
      describe "educations", type: :feature do
        refinery_login

        describe "educations list" do
          before do
            FactoryGirl.create(:education, :school_name => "UniqueTitleOne")
            FactoryGirl.create(:education, :school_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.resumes_admin_educations_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.resumes_admin_educations_path

            click_link "Add New Education"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "School Name", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Resumes::Education, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Resumes::Education, :count)

              expect(page).to have_content("School Name can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:education, :school_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.resumes_admin_educations_path

              click_link "Add New Education"

              fill_in "School Name", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Resumes::Education, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:education, :school_name => "A school_name") }

          it "should succeed" do
            visit refinery.resumes_admin_educations_path

            within ".actions" do
              click_link "Edit this education"
            end

            fill_in "School Name", :with => "A different school_name"
            click_button "Save"

            expect(page).to have_content("'A different school_name' was successfully updated.")
            expect(page).not_to have_content("A school_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:education, :school_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.resumes_admin_educations_path

            click_link "Remove this education forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Resumes::Education.count).to eq(0)
          end
        end

      end
    end
  end
end
