class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.string :team
      t.integer :yard_line
      t.string :play_type
      t.integer :yards_gained
      t.string :play_result

      t.timestamps
    end
  end
end
