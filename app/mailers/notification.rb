class Notification < ActionMailer::Base
  default from: 'liuxintoys@gmail.com'

  def order_notification(number)
    @number = number
    mail subject: t('notification.new') + ' ' + number.to_s,
         to: 'liuxintoys@gmail.com',
         from: 'liuxintoys@gmail.com'
  end
end
