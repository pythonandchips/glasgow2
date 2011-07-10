class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :css_class
      t.string :organiser_name
      t.string :organiser_email
      t.string :url
      t.string :name
      t.string :who
      t.string :when
      t.integer :verified
      t.integer :week
      t.timestamps
    end
  end

  def self.down
  end
end
