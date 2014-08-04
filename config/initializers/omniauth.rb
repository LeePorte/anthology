Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer, { :fields => [:id, :name, :nickname], :uid_field => :id } unless Rails.env.production?
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"],
    {
      name: "google",
      image_aspect_ratio: "square"
    }
end
