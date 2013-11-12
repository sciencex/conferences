class CreateDivsions < ActiveRecord::Migration
  def change
    create_table :divsions do |t|
      t.belongs_to :conference
      t.string :name

      t.timestamps
    end
  end
end
