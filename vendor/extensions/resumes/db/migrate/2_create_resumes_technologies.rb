class CreateResumesTechnologies < ActiveRecord::Migration[5.1]

  def up
    create_table :refinery_resumes_technologies do |t|
      t.string :title
      t.integer :logo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-resumes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/resumes/technologies"})
    end

    drop_table :refinery_resumes_technologies

  end

end
