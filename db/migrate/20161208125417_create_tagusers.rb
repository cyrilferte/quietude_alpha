class CreateTagusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tagusers do |t|
      t.references :user, foreign_key: true
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end
