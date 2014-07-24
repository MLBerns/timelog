module UsersHelper
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def drawDates
    month = Time.now.strftime("%h")
    days = []
    if month.match(/\AJan|Mar|May|Jul|Aug|Oct|Dec\z/)
      1.upto(31) do |x|
        days << x
      end
    elsif month.match(/\AApr|Jun|Sep|Nov\z/)
      1.upto(30) do |x|
        days << x
      end
    else
      1.upto(28) do |x|
        days << x
      end
    end
    days
  end
end
