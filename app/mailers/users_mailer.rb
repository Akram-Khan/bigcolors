class UsersMailer < ActionMailer::Base
  layout 'email'

  def notification_email(notification)
  	logger.debug "mailer1"
    @notification = notification
    old_locale = I18n.locale
    #I18n.locale = @notification.user.locale
    #I18n.locale = @notification.user.locale if I18n.locale.to_s != @notification.user.locale.to_s # we need this if to avoid stack overflow in controller
    #I18n.locale.to_s = @notification.user.locale.to_s
    #set_locale @notification.user.locale
    logger.debug "mailer2"
    mail(:from => "#{I18n.t('site.name')} <#{I18n.t('site.email.contact')}>", :to => @notification.user.email, :subject => @notification.email_subject)
    logger.debug "mailer3"
    #I18n.locale = old_locale
    #I18n.locale = old_locale if I18n.locale.to_s != @notification.user.locale.to_s
    logger.debug "mailer4"
  end
end