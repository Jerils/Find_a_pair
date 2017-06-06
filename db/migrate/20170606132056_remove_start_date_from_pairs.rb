class RemoveStartDateFromPairs < ActiveRecord::Migration[5.1]
  def change
    remove_column :pairs, :start_date, :datetime
  end
end
