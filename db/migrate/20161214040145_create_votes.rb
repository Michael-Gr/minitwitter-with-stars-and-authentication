class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.text :vote
      t.integer :user_id
      t.references :tweet, foreign_key: true

      t.timestamps
    end
  end
end
