require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'devise'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cdgmembersapp
	class Application < Rails::Application

    # Time Zone
		config.time_zone = 'Pacific Time (US & Canada)'
		
		# ActionMailer Config
    config.action_mailer.default_url_options = { :host => 'phcnetworks.ca' }
		config.action_mailer.delivery_method = :smtp

		# change to true to allow email to be sent during development
		config.action_mailer.perform_deliveries = true
		config.action_mailer.raise_delivery_errors = true
		config.action_mailer.default :charset => "utf-8"

		config.action_mailer.smtp_settings = {
			:address   => "smtp.mandrillapp.com",
			:port      => 587,
			:user_name => ENV["MANDRILL_USERNAME"],
			:password  => ENV["MANDRILL_APIKEY"],
			:authentication => :plain,
			:enable_starttls_auto => true
		}

	end
end
