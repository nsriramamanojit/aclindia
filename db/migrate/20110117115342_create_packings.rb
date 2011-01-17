class CreatePackings < ActiveRecord::Migration
  def self.up
    create_table :packings do |t|

	t.string :name
	t.string :description
	t.string :status
	t.string :created_by
	t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :packings
  end
end
