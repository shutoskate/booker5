class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :kill, null: false
      t.text :title, null: false
      t.string :author
      t.string :image
      t.timestamps
    end
  end
end
