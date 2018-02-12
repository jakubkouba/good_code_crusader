class CreateResumesEmployments < ActiveRecord::Migration[5.1]

  def up
    create_table :refinery_resumes_employments do |t|
      t.string :company_name
      t.integer :logo_id
      t.date :start_date
      t.date :end_date
      t.string :position
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-resumes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/resumes/employments"})
    end

    drop_table :refinery_resumes_employments

  end

end
