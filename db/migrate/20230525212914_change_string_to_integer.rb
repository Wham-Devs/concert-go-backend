class ChangeStringToInteger < ActiveRecord::Migration[7.0]
  def change

    remove_column :liked_events, :liked_id, :string
    add_column :liked_events, :liked, :integer
  end
end
