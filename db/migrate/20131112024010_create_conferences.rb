class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
