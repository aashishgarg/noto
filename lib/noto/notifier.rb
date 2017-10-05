module Noto
  module Core
    def notifier(options = {})
      @@target ||= options[:target]
      @@notify_on ||= options[:notify_on]
      @@message ||= options[:message]


    end
  end

  def self.included(base)
    base.class_eval do
      @@target = {}
      @@notify_on = []
      @@message = ''
      extend Core

      after_commit :notify
    end

    private
    def notify
      puts "*****************************"
      puts @@target
      puts "*****************************"
    end
  end
end