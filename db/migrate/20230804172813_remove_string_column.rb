class RemoveStringColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :string, :string
  end
end
