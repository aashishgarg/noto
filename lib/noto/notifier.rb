module Noto
  module Core
    def notifier(options = {})
      cattr_accessor(:options) {options}
    end
  end

  def self.included(base)
    base.extend Core
    base.send('after_create_commit', :notify)

    private
    def notify
      puts '111111111111111111111111111111111'
      puts self.class.options
      puts '111111111111111111111111111111111'
    end
  end
end