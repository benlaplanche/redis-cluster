#!/usr/bin/env ruby
require 'yaml'

class RedisCluster

	def initialize(yaml_config_file)
		load_yaml(yaml_config_file)

		
	end

	def load_yaml(file)
		@yaml_file = YAML.load_file(file)
	end

end

yaml_config_file = ARGV[0] || 'config.yml'

RedisCluster.new(yaml_config_file)