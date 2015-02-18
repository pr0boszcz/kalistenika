class TrainingsSeriesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :trainings_series, id: false do |t|
        t.references :training, :serie
    end
    add_index :trainings_series, [:serie_id, :training_id]
  end

  def self.down
    drop_table :trainings_series
  end
end
