module Noto
  module Core
    def notifier(options = {})
      invalid_keys = options.keys - valid_options

      puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
      puts invalid_keys
      puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
    end

    def valid_options
      [:target, :notify_on, :message]
    end

    def valid_keys?

    end
  end
end