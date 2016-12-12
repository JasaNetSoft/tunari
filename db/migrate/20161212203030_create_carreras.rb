class CreateCarreras < ActiveRecord::Migration[5.0]
  def change
    create_table :carreras do |t|
      t.string :name

      t.timestamps
    end
  end
end
