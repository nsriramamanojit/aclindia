class CreateSubcategories < ActiveRecord::Migration
  def self.up
    create_table :subcategories do |t|

	t.integer :category_id
	t.string  :name
	t.string  :description
	t.string  :status
	t.string  :created_by
	t.string  :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :subcategories
  end
end
