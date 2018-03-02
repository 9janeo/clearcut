AssetSync.configure do |config|
  config.fog_provider = 'AWS'
  config.fog_directory = ENV['AWS_BUCKET']
  config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.aws_secret_access_key = ENV['AWS_ACCESS_SECRET_KEY']

  # Don't delete files from the store
  # config.existing_remote_files = 'keep'
  #
  # Increase upload performance by configuring your region
  # config.fog_region = 'eu-west-1'
  #
  # Change AWS signature version. Default is 4
  # config.aws_signature_version = 4
  #
  # Change host option in fog (only if you need to)
  # config.fog_host = 's3.amazonaws.com'
  #
  # Use http instead of https.
  # config.fog_scheme = 'http'
  #
  # Automatically replace files with their equivalent gzip compressed version
  # config.gzip_compression = true
  #
  # Use the Rails generated 'manifest.yml' file to produce the list of files to
  # upload instead of searching the assets directory.
  # config.manifest = true
  #
  # Upload the manifest file also.
  # config.include_manifest = false
  #
  # Fail silently.  Useful for environments such as Heroku
  # config.fail_silently = true
  #
  # Log silently. Default is `true`. But you can set it to false if more logging message are preferred.
  # Logging messages are sent to `STDOUT` when `log_silently` is falsy
  # config.log_silently = true
  #
  # Allow custom assets to be cacheable. Note: The base filename will be matched
  # If you have an asset with name `app.0b1a4cd3.js`, only `app.0b1a4cd3` will need to be matched
  # only one of `cache_asset_regexp` or `cache_asset_regexps` is allowed.
  # config.cache_asset_regexp = /\.[a-f0-9]{8}$/i
  # config.cache_asset_regexps = [ /\.[a-f0-9]{8}$/i, /\.[a-f0-9]{20}$/i ]
end