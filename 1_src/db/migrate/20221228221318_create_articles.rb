class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :authors
      t.date :publish_date
      t.integer :pages
      t.text :abstract
      t.string :keywords
      t.string :url
      t.string :ids
      t.string :type

      #Journal attributes
      t.string :journal_name
      t.string :volume
      t.string :issue
      
      #Conference attributes
      t.string :proceedings
      t.string :place

      #Book attributes
      t.string :edition
      t.string :publisher

      #Thesis attributes
      t.string :departement
      t.string :university
      t.string :thesis_type

      t.timestamps
    end
  end
end
