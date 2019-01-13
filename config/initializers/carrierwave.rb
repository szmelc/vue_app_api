CarrierWave.configure do |config|
  if Rails.env.test? or Rails.env.development?
    config.storage = :file
    config.enable_processing = false
  end
  config.fog_provider = "fog/aws" # required
  config.fog_credentials = {
    provider:              "AWS", # required
    aws_access_key_id:     ENV["aws_access_key_id"], # required unless using use_iam_profile
    aws_secret_access_key: ENV["aws_secret_access_key"], # required unless using use_iam_profile
    region:                ENV["aws_region"], # optional, defaults to 'us-east-1'
    host:                  "s3-#{ENV["aws_region"]}.amazonaws.com"
  }
  config.fog_directory  = ENV["aws_bucket"] # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end