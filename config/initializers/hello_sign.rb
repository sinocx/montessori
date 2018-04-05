require 'hello_sign'
HelloSign.configure do |config|
  config.api_key = '6d3676bf97ed3a43ffb3ecd2faba218870637e680b328aee569c25b07d7eb346'
  # You can use email_address and password instead of api_key. But api_key is recommended
  # If api_key, email_address and password are all present, api_key will be used
  # config.email_address = 'email_address'
  # config.password = 'password'
end
