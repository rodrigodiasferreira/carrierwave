CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',                                         # required
    aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],                        # required
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],    # required
    region: ENV["AWS_REGION"],                  # optional, defaults to 'us-east-1'
    host: ENV["AWS_HOST"]
  }
  config.fog_directory  = ENV["AWS_S3_BUCKET"]
  #config.storage = :fog
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end