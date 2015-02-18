class CreateExercisesGroups < ActiveRecord::Migration
  def change
    create_table :exercises_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
