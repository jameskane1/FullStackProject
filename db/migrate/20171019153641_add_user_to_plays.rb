class AddUserToPlays < ActiveRecord::Migration[5.1]
  def change
    add_reference :plays, :user, foreign_key: true
  end
end
