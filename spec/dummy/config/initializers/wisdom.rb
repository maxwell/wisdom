Wisdom.config do |config|
  config.current_user_method  = lambda{ current_user }
  config.admin_method = :is_staff?
  config.site_title = "BonerJamz"
  config.contact_email = 'maxwell@backerkit.com'
end