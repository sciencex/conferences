class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :divsion
      t.string :name
      t.string :city
      t.string :state
      t.string :stadium
      t.datetime :founded

      t.timestamps
    end
  end
end
