class CreateFavors < ActiveRecord::Migration
  def self.up
    create_table :favors do |t|
      t.string :takers
      t.string :givers
      t.string :description
      t.string :place
      t.datetime :when

      t.timestamps
    end
  end

  def self.down
    drop_table :favors
  end
end
