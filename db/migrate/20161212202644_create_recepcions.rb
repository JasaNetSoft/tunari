class CreateRecepcions < ActiveRecord::Migration[5.0]
  def change
    create_table :recepcions do |t|
      t.string :username
      t.string :remitente
      t.string :destinatario
      t.text :referencia
      t.string :numero
      t.string :estado
      t.string :carrera

      t.timestamps
    end
  end
end
