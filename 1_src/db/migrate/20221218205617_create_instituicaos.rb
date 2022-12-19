class CreateInstituicaos < ActiveRecord::Migration[7.0]
  def change
    create_table :instituicaos do |t|
      t.string :url
      t.text :nome
      t.string :imagem
      t.string :parceiros

      t.timestamps
    end
  end
end
