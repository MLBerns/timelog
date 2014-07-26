class Month < ActiveRecord::Base
  has_many :days
  belongs_to :calendar
  after_create :createDays

  def createDays
    #http://www.youtube.com/watch?v=0V784AiYtG8
    if self.month_num == 1 || 3 || 5 || 7 || 8 || 10 || 12
      days_in_month = 31
    elsif self.month_num == 4 || 6 || 9 || 11
      days_in_month = 30
    elsif self.month_num == 2
      days_in_month = 28
    end

    1.upto(days_in_month) do |date|
      self.days << Day.create(date: date)
    end
  end
end