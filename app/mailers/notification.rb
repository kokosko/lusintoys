class Notification < ActionMailer::Base
  default from: 'liuxintoys@gmail.com'

  def order_notification
    mail(to: 'liuxintoys@gmail.com', subject: t('notification.new'))
  end
end
