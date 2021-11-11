class AddSchedueledForToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :schedueled_for, :datetime
  end
end
