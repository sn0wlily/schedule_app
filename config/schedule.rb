=begin
name: tsuchiya
date: 2020/7/15
purpose: cron　schedule
=end


# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# Example:
#
require File.expand_path(File.dirname(__FILE__) + "/environment")
# ジョブの実行環境の指定
set :environment, :production

# set PATH
# ref: Rails cron whenever, bundle: command not found
# https://stackoverflow.com/questions/9482298/rails-cron-whenever-bundle-command-not-found?answertab=votes#tab-top
env :PATH, ENV['PATH']

#set :environment, :development
# 出力先のログファイルの指定
set :output, { :error => 'log/error.log', :standard => 'log/cron.log' }


every 1.day, at: "8:00 pm" do
#every 1.minute do
  rake "mail_task:mailer"
end

every 1.minute do
  rake "task_sample:sample"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
