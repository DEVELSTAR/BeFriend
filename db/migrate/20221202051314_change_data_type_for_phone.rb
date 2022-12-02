class ChangeDataTypeForPhone < ActiveRecord::Migration[7.0]
  def self.up
    change_table :users do |t|
      t.change :phone, :bigint
    end
  end
  def self.down
    change_table :tablename do |t|
      t.change :phone, :integer
    end
  end
end