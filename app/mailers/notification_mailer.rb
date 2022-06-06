=begin
name: tsuchiya
date: 2020/7/15
purpose: mailer 
=end

=begin
name: tsuchiya
date: 2020/7/15
Function: NotificationMailer
Args: kadai
Return: mail送信
=end


class NotificationMailer < ActionMailer::Base
  default from: "tasksup.1b@gmail.com"
  
  def send_confirm_to_user(kadai)
    @user = User.find(kadai.user_id)
    @kadai = kadai
    mail(
      subject: "課題の期限通知", #メールのタイトル
      to: @user.email #宛先
    ) do |format|
      format.text
    end
  end
end