class CreateRetweets < ActiveRecord::Migration[5.0]
  def change
    create_table :retweets do |t|
      t.boolean :retweet
      t.integer :user_id
      t.references :tweet, foreign_key: true

      t.timestamps
    end
  end
end
