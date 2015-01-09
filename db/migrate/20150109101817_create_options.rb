class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :question_group_id
      t.string :title

      t.timestamps
    end
  end
end
