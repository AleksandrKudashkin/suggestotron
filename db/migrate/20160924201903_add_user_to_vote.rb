class AddUserToVote < ActiveRecord::Migration[5.0]
  def change
    change_table :votes do |t|
      t.references :user, index: true
    end
  end
end
