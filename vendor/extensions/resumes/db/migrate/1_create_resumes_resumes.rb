class CreateResumesResumes < ActiveRecord::Migration[5.1]

  def up
    create_table :refinery_resumes do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-resumes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/resumes/resumes"})
    end

    drop_table :refinery_resumes

  end

end
