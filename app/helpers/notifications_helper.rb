module NotificationsHelper
  def posted_time(time)
    time > Date.today ? "#{time_ago_in_words(time)}" : time.strftime('%m月%d日')
  end

  def is_read(notification)
    if !notification.read
      "未読"
    end
  end
end
