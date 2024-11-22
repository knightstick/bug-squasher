class CreateBugs < ActiveRecord::Migration[8.0]
  def change
    create_table :bugs do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps
    end
  end
end
