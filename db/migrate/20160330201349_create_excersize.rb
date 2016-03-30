class CreateExcersize < ActiveRecord::Migration
  def change
    create_table :excersizes do |t|
      t.column :name, :string
      t.column :calories_per_hour, :integer
    end
  end
end
