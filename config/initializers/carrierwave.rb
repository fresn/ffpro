
CarrierWave.configure do |config|
  config.storage = :gcloud
  config.gcloud_bucket = 'ol_store'
  config.gcloud_bucket_is_public = true
  config.gcloud_authenticated_url_expiration = 600

  config.gcloud_attributes = {
      expires: 600
  }

  config.gcloud_credentials = {
      gcloud_project: 'wechat',
      gcloud_keyfile: 'wechat-a217ab81f572.json'
  }
end