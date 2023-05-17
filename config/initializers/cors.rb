Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://192.168.255.185:3000' # Replace with the URL of your React frontend
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
  end
  