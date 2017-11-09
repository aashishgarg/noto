module Noto
  module Core

    def notifier(options = {})
      cattr_accessor :options
      puts '1111111111111111111111111111111111111111111'
      puts options
      self.options = options
      puts self.options
      puts '1111111111111111111111111111111111111111111'
    end
  end

  def self.included(base)
    base.extend Core
    base.send('after_create_commit', :notify)

    private
    def notify
      puts '&&&&&&&&&&&&&&&&&&&&&&&&'
      puts 'notified'
      puts self.class.options
      puts '&&&&&&&&&&&&&&&&&&&&&&&&'
    end
  end
end