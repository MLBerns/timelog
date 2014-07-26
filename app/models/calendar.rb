class Calendar < ActiveRecord::Base
  has_many :months
  belongs_to :worker, class_name: "User"
  after_create :createMonths

  private
  def createMonths
    1.upto(12) do |month_num|
      self.months << months.create(month_num: month_num)
    end
  end
  # use find or create by for assigning to user
end
