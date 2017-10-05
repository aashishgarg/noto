module Noto
  module Core
    mattr_accessor :target
    mattr_accessor :notify_on
    mattr_accessor :message

    def notifier(options = {})
      self.target = options[:target]
      self.notify_on = options[:notify_on]
      self.message = options[:message]
    end
  end

  def self.included(base)
    base.class_eval do
      extend Core
      after_commit :notify
    end

    private
    def notify
      puts "*****************************"
      puts self.class.target
      puts "*****************************"
      puts self.class.notify_on
      puts "*****************************"
      puts self.class.message
      puts "*****************************"
    end
  end
end