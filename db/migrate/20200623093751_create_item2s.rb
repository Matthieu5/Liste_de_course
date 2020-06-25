class CreateItem2s < ActiveRecord::Migration[6.0]
  def change
    create_table :item2s do |t|
      t.string :libelle
      t.integer :quantite
      t.boolean :deja_achete
      t.integer :rayon_id

      t.timestamps
    end
  end
end
