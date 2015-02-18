class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.text :name
      t.text :description
      t.integer :weekdays
      t.integer :duration
      t.belongs_to :user

      t.timestamps
    end
  end
end
