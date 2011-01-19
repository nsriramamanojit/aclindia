class CreateSampleconditions < ActiveRecord::Migration
  def self.up
    create_table :sampleconditions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sampleconditions
  end
end
