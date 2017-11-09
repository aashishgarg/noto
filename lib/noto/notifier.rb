module Noto
  module Core

    def notifier(options = {})
      puts '1111111111111111111111111111111111111111111'
      puts options
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
      puts '&&&&&&&&&&&&&&&&&&&&&&&&'
    end
  end
end