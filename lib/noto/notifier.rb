module Noto
  module Core
    def notifier(options = {})
      @@target ||= options[:target]
      @@notify_on ||= options[:notify_on]
      @@message ||= options[:message]

      # When target is a HASH
      puts '************************************'
      puts self.send("#{@@target.keys.first}").send("#{@@target.values.first}")
      puts '************************************'
    end
  end

  def self.included(base)
    base.class_eval do
      @@target = {}
      @@notify_on = []
      @@message = ''
      extend Core
    end
  end
end