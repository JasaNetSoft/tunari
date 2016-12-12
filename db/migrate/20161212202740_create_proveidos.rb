class CreateProveidos < ActiveRecord::Migration[5.0]
  def change
    create_table :proveidos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
