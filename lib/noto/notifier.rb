module Noto
  module Core
    def notifier(options = {})
      @@target = options[:target]
      valid_target?
    end

    def valid_options
      [:target, :notify_on, :message]
    end

    def valid_target?
      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      puts @@target
      puts @@target.keys.first
      puts @@target.keys.first.class
      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      self.reflect_on_all_associations.collect(&:name).any?{|association_name| association_name == @@target.keys}
    end
  end
end