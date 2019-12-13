# frozen_string_literal: true

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
    # some user have reported having to include additional lines, uncomment if want to use
    # config.fog_provider = 'fog/aws'
  end
end
