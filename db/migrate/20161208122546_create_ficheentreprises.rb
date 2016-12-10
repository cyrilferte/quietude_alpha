class CreateFicheentreprises < ActiveRecord::Migration[5.0]
  def change
    create_table :ficheentreprises do |t|
      t.string :name
      t.string :mail
      t.string :url
      t.string :tagline
      t.string :text

      t.timestamps
    end
  end
end
