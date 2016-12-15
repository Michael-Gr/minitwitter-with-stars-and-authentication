class RenameVoteToHeart < ActiveRecord::Migration[5.0]
  def change
    rename_table :votes, :hearts
  end
end
