class SetupNoto < Rails::Generators::Base

  desc 'Migration file for notifications data.'
  def create_initializer_file
    create_file "config/initializers/initializer.rb", "# Add initialization content here"
  end
end