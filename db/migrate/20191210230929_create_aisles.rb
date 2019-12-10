class CreateAisles < ActiveRecord::Migration[5.2]
  def change
    create_table :aisles do |t|
      t.string   :aname
      t.text     :adescr
      t.timestamps
    end
    add_index :aisles, :aname
  end
end
