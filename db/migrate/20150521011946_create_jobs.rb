class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.integer :salary
      t.timestamps :start
      t.boolean :published, default: false
      t.integer :views, default: 0
      t.timestamps
    end
  end
end
