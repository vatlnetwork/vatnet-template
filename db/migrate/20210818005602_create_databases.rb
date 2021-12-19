class CreateDatabases < ActiveRecord::Migration[6.1]
  def change
    create_table :databases do |t|

      t.timestamps
    end
  end
end
