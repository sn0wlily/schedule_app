=begin
name: tanaka
date: 2020/7/13
Function: start_due_chaek , 選択範囲エラー
Args: due
Return: true or false
=end

class Kadai < ApplicationRecord
  validates :title,  presence: true, length: { maximum: 32 }
  validates :out,  presence: true, length: { maximum: 32 }
  validates :etc, presence: true, length: { maximum: 100 }
  validates :start_date, presence: true
  validates :due, presence: true
  validates :imp, numericality: {greater_than: 0,less_than: 4}#1~3
  validates :sinko,numericality: {greater_than: 0,less_than: 11}#0~10
  validate :start_due_check
  
  def start_due_check
    errors.add(:due, "の日付を開始日より後にしてください。") unless 
    self.start_date < self.due
  end
end
