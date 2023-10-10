if Rails.application.config.x.cors_allowed_origins
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins Rails.application.config.x.cors_allowed_origins

      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head], 
        expose: %w(Authorization),
        credentials:true
    end
  end
end