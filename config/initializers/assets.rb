# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( middle.css )
Rails.application.config.assets.precompile += %w( signin.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( custom.scss )
Rails.application.config.assets.precompile += %w( kadais.scss )
Rails.application.config.assets.precompile += %w( scaffolds.scss )
Rails.application.config.assets.precompile += %w( sessions.scss )
Rails.application.config.assets.precompile += %w( static_pages.scss )
Rails.application.config.assets.precompile += %w( users.scss )