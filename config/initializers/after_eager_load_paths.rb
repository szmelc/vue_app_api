Rails.application.configure do
  if config.respond_to?(:after_eager_load_paths) && config.after_eager_load_paths.instance_of?(Array)
    config.after_initialize do
      config.after_eager_load_paths.each do |path|
        Dir["#{path}/*.rb"].each { |file| require file }
      end
    end
  end
end