class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :name
      t.string :number
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
