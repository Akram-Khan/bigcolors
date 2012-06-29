class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates_presence_of :user, :text
  scope :not_dismissed, where(:dismissed => false)
  after_create :send_email
  def send_email
    I18n.locale = :en
    return unless self.email_subject and self.email_text and self.user.email
    I18n.locale = :en
    UsersMailer.notification_email(self).deliver
  rescue
  end
end
