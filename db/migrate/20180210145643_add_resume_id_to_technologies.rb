class AddResumeIdToTechnologies < ActiveRecord::Migration[5.1]
  def up
    add_column :refinery_resumes_technologies, :resume_id, :integer
  end

  def down
    remove_column :refinery_resumes_technologies, :resume_id, :integer
  end
end
