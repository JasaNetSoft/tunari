class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.text :comment

      t.timestamps
    end
  end
end
