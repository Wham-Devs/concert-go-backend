class RemoveIntegerColoumn < ActiveRecord::Migration[7.0]
  def change

    remove_column :liked_events, :integer, :string
  end
end
