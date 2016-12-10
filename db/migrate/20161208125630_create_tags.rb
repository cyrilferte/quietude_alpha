class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :classe
      t.string :name
      t.string :titre
      t.string :url
      t.string :tagline
      t.string :text

      t.timestamps
    end
  end
end
