require 'yaml'

config = YAML.load_file('config.yml')

p config.dig('secret_key')

p config.dig('production', 'aws_key')