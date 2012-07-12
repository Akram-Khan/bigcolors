begin
  #if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.gmail.com',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'bigcolors@akaruilabs.com',
    :password       =>  'ams1terdam',
    :domain         => 'bigcolors.webbyapp.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  #end
rescue
  nil
end
