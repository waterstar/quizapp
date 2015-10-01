class CreateKnownfacts < ActiveRecord::Migration
  def change
    create_table :knownfacts do |t|
      t.string :fact
      t.integer :yes_count, default: 0
      t.integer :no_count, default: 0

      t.timestamps
    end
  end
end
