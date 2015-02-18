class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :level
      t.integer :pause

      t.timestamps
    end
  end
end
