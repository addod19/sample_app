# frozen_string_literal: true

if Rails.env.test?
  CarrierWave.configure do |config|
    config.enable_processing = false
  end
end
