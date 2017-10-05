module Noto
  module Core
    mattr_accessor :target
    mattr_accessor :notify_on
    mattr_accessor :message

    def notifier(options = {})
      self.target = options[:target]
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
      puts self.target
      puts "*****************************"
    end
  end
end