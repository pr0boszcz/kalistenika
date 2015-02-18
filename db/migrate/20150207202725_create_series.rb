class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.integer :repeats
      t.belongs_to :user
      t.belongs_to :exercise

      t.timestamps
    end
  end
end
