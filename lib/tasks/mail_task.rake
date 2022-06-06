=begin
name: tsuchiya
date: 2020/7/15
purpose: mailer raketask
=end

=begin
name: tsuchiya
date: 2020/7/15
Function: mail_task:mailer
Args: kadai
Return: NotificationMailer.send_confirm_to_user(kadai) 
=end


namespace :mail_task do
  desc "課題の締め切りと今日の日付を比較して・日前ならメールを送信する"
  task :mailer => :environment do
    #puts "Hello"
    kadais = Kadai.all#全ての課題呼び出し

    kadais.each do |kadai|
      require 'date'#現在の日時
      a = kadai.imp*(10-kadai.sinko)/10.0 #優先度
      d1 = Date.today#今日
      dt2 = kadai.due#datetime型→date型
      d2 = dt2.to_date#課題締め切り日
      #優先度から何日前に送るか計算
      
      if a > 2 
        c = 3#三日前
      elsif a > 1 
        c = 2#二日前
      else 
        c = 1#1日前
      end
      b = d2 - c
      puts(a,c)
      if d1 >= b &&  d1 < d2#比較
        NotificationMailer.send_confirm_to_user(kadai).deliver #メール送信
        
      else
        puts("メールなし") 
      end

    end
  end
end
