plugin :tmp_restart

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

env = ENV.fetch('RAILS_ENV') { 'development' }

if %w[production staging development].include?(env)

  environment env

  if %w[development production].include?(env)
    port  ENV.fetch("RAILS_PORT") { 3000 }
  end

  bind "unix://#{ENV.fetch('APP_DIR') { '/workspace' }}/tmp/sockets/puma.sock?umask=0111"

  preload_app!

  workers ENV.fetch('RAILS_WEB_CONCURRENCY') { 2 }

  on_worker_boot do
    # worker specific setup
    ActiveSupport.on_load(:active_record) do
      config = ActiveRecord::Base.configurations[Rails.env] ||
               Rails.application.config.database_configuration[Rails.env]
      config['pool'] = ENV['RAILS_MAX_THREADS'] || 16
      ActiveRecord::Base.establish_connection(config)
    end
  end

end
