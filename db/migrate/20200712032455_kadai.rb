=begin
name: tanaka
date: 2020/7/13
purpose: add_column_user_id
=end

class Kadai < ActiveRecord::Migration[5.1]
  def change
    add_column :kadais, :user_id, :integer
  end
end
