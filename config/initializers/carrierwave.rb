require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV["AWS_ACCESS_MYTOWN_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_MYTOWN_KEY"],
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'mytown3'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/mytown'
end