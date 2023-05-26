class CreateLikedEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :liked_events do |t|
      t.string :liked_id
      t.string :integer

      t.timestamps
    end
  end
end
