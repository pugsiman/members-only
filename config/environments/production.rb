Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  # config.action_dispatch.rack_cache = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.static_cache_control = "public, max-age=#{1.month.to_i}"
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass
  config.assets.compile = false
  config.assets.digest = true
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX
  config.force_ssl = true
  config.log_level = :debug
  # config.cache_store = :mem_cache_store
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
end
