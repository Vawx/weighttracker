class AddInfoToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :serving_size, :integer
    add_column :foods, :server_size_measure, :string
    add_column :foods, :fat_grams, :integer
    add_column :foods, :carbs_grams, :integer
    add_column :foods, :protien_grams, :integer
    add_column :foods, :cholesterol_milli, :integer
    add_column :foods, :weight_grams, :float
    add_column :foods, :sat_fat_grams, :float
  end
end
