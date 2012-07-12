begin
  #if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
    :address        => 'mail.bigcolors.com',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'info@bigcolors.com',
    :password       =>  'samsung12',
    :domain         => 'bigcolors.webbyapp.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  #end
rescue
  nil
end
