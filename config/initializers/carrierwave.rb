require 'carrierwave/orm/activerecord'

if Rails.env.production?
  CarrierWave.configure do |config|
    #azure configuration
    config.azure_storage_account_name = ENV['AZURE_STORAGE_ACCOUNT'] #''
    config.azure_storage_access_key = ENV['AZURE_STORAGE_ACCESS_KEY'] #''
    config.azure_storage_blob_host = ENV['AZURE_STORAGE_BLOB_ACCOUNT'] #'' # optional
    config.azure_container = ENV['AZURE_CONTAINER'] #''
    #config.asset_host = 'YOUR CDN HOST' # optional

    # config.fog_credentials = {
    #   # Configuration for Amazon S3
    #   :provider               => 'AWS',
    #   :aws_access_key_id      => ENV['S3_ACCESS_KEY'],
    #   :aws_secret_access_key  => ENV['S3_SECRET_KEY']
    # }
    # config.fog_directory = ENV['S3_BUCKET']
  end
end
