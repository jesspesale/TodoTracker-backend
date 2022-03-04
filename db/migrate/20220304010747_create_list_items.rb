class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.string :desription
      t.boolean :completed
      t.integer :list_id

      t.timestamps
    end
  end
end