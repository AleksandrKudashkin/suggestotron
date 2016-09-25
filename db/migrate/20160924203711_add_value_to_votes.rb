class AddValueToVotes < ActiveRecord::Migration[5.0]
  def change
    change_table :votes do |t|
      t.integer :value
    end
  end
end
