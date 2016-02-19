class AddQuantityToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :quantity, :integer, default: 0
  end
end
