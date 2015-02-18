class PlansTrainingsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :plans_trainings, id: false do |t|
      t.references :plan, :training
    end
    add_index :plans_trainings, [:plan_id, :training_id]
  end
  def self.down
    drop_table :plans_trainings
  end
end
