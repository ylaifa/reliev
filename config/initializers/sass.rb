# Be sure to restart your server when you modify this file.

# Add additional assets to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
Rails.application.config.assets.precompile += %w[*.scss]

# Enable Sass source maps
Rails.application.config.sass.source_maps = true

# Configure Sass
Rails.application.config.sass.load_paths << Rails.root.join('app', 'assets', 'stylesheets')
