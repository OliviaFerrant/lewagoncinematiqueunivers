class CreateSuperpowers < ActiveRecord::Migration[5.2]
  def change
    create_table :superpowers do |t|
      t.references :character, foreign_key: true
      t.references :power, foreign_key: true

      t.timestamps
    end
  end
end
