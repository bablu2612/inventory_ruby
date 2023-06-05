class ApplicationMailer < ActionMailer::Base
  # default from: 'hello@postyourcars.com'
  default from: 'PYC Admin <hello@postyourcars.com>'

  layout 'mailer'
end
