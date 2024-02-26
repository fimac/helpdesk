import Config

config :helpdesk, :ash_apis, [Helpdesk.Support]
# I don't know what these mean, and the docs don't explain why I have to add this.
# Just says you need to add some backwards compatibility config.
config :ash_graphql, :default_managed_relationship_type_name_template, :action_name
config :ash_graphql, :allow_non_null_mutation_arguments?, true
