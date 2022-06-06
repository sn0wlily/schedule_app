=begin
name: tanaka
date: 2020/7/13
purpose: create_kadai
=end


class CreateKadais < ActiveRecord::Migration[5.1]
  def change
    create_table :kadais do |t|
      t.string :title
      t.string :out
      t.text :etc
      t.datetime :start_date
      t.datetime :due
      t.integer :imp
      t.integer :sinko

      t.timestamps
    end
  end
end
