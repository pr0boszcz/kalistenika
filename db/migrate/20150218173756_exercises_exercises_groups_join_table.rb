class ExercisesExercisesGroupsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :exercise_exercises_group, id: false do |t|
      t.belongs_to :exercise
      t.belongs_to :exercises_group
    end
  end
  def self.down 
    drop_table :exercise_exercises_group
  end
end
