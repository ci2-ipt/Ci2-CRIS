class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.string :role
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :url_project

      t.timestamps
    end
  end
end
