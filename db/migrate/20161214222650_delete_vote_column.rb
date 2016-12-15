class DeleteVoteColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :hearts, :vote, :text
  end
end
