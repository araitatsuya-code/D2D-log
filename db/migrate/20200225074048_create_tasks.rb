class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content, null: false
      t.string :status, null: false, default: 0
      t.datetime :target_at, null: true
      t.datetime :completed_at, null: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
