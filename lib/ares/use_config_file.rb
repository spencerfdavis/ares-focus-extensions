# Similar to database.yml, this adds a YAML file for each environment with the settings for
# each site.  It DRYs up the implementation.  Each ARes model can override any setting if needed.
class ActiveResource::Base
  protected
  def self.establish_site_connection
    filename = File.join('config', 'sites.yml')
    if File.exist?(filename)
      environment_configurations = YAML.load File.new(filename)
      site_configurations = environment_configurations[Rails.env]
      site_configurations.each{|k, v| self.send("#{k}=", v)}
    else
      puts "Error finding ActiveResource config file: #{filename}!  Make sure this file exists.\n"
      exit
    end
  end
end