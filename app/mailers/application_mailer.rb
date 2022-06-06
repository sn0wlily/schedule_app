=begin
name: tsuchiya
date: 2020/6/23
purpose: mailer default
=end

class ApplicationMailer < ActionMailer::Base
  default from: "管理人　<tasksup.1b@gmail.com>"
  layout 'mailer'
end
