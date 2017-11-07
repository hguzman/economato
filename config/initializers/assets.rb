Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( consolidados.js consolidados.css )
Rails.application.config.assets.precompile += %w( productos.js productos.css )
Rails.application.config.assets.precompile += %w( teachers.js teachers.css )
Rails.application.config.assets.precompile += %w( fichas.js fichas.css )
Rails.application.config.assets.precompile += %w( welcome.js welcome.css )
Rails.application.config.assets.precompile += %w( contratos.js contratos.css )
Rails.application.config.assets.precompile += %w( programs.js programs.css )
Rails.application.config.assets.precompile += %w( activities.js activities.css )
