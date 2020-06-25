class CreateRayons < ActiveRecord::Migration[6.0]
  def change
    create_table :rayons do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
