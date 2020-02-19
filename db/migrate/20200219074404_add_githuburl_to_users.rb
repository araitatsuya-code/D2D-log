class AddGithuburlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :githuburl, :string
  end
end
