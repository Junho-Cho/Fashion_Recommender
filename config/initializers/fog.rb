CarrierWave.configure do |config|
   config.fog_provider = 'fog/aws'
   config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAIBVMUTHWSQ7UV4FQ',
      aws_secret_access_key: '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',
      region: 'us-west-2'
   }
   config.fog_directory = 'silver2473-bucket'
end