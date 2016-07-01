require 'carrierwave/orm/activerecord'

if Rails.env.production?
  CarrierWave.configure do |config|
    #azure configuration
    config.azure_storage_account_name = 'devlixirstore'
    config.azure_storage_access_key = 'ZQ83EjeGB+CKPjNRGuPGSUg3/Lxo9vEQ1wE45lbQDsDKT7P8hi/0hqkxq9+pg5KNjPd+kdg7zl2h56sOQoWNYw=='
    config.azure_storage_blob_host = 'https://devlixirstore.blob.core.windows.net/' # optional
    config.azure_container = 'devlixircont'
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
