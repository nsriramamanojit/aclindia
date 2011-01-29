class CreateUserroles < ActiveRecord::Migration
  def self.up
    create_table :userroles do |t|
      t.string :name
      t.string :description
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :userroles
  end
end
