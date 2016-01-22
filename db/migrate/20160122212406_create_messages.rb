class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :serialized_data
      t.timestamps null: false
    end
  end
end
