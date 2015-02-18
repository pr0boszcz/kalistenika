class PlansSeriesJoinTable < ActiveRecord::Migration
  def self.up
  	create_table :plans_series, id: false do |t|
  		t.references :serie, :plan
  	end

  	add_index :plans_series, [:serie_id, :plan_id]
  end
  def self.down
  	drop_table :plans_series
  end
end
