class AddPhotoToFicheentreprises < ActiveRecord::Migration[5.0]
  def change
    add_column :ficheentreprises, :photo, :string
  end
end
