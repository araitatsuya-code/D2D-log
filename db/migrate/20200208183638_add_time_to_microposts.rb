class AddTimeToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :time, :integer
  end
end
