require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Baukis2
  class Application < Rails::Application
    config.load_defaults 6.0

    config.time_zone = "Tokyo" #日本時間に設定（世界時間で9時間の時差がある為。）
    config.i18n.load_path +=
      Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}").to_s] 
      #(国際化の為のデータファイル)のロードパスを設定。
      #config/localesディレクトリー以下を再起的に読み込む設定。
    config.i18n.default_locale = :ja #日本語の設定。

    config.generators do |g|
      g.skip_routes true
      g.helper false
      g.assets false
      g.test_framework :rspec
      g.controllar_specs false
      g.view_specs false
    end
  end
end
