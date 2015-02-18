class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.date :date
      t.belongs_to :training
      t.belongs_to :plan

      t.timestamps
    end
  end
end
