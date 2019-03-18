class CreateCollectionPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :collection_points do |t|
      t.string :name
      t.string :direction

      t.timestamps
    end
  end
end
