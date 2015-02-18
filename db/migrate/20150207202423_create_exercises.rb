class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description

      t.belongs_to :user
      t.timestamps
    end
  end
end
