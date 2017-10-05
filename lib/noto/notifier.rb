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
    base.extend Core
    # self.notify_on.each do |action|
    #   base.send("after_#{action}_commit", :notify)
    # end

    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    puts @@notify_on
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"


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