defmodule Helpdesk.Support do
  # This is the API module
  use Ash.Api,
    extensions: [
      AshGraphql.Api
    ]

  resources do
    resource Helpdesk.Support.Ticket
    resource Helpdesk.Support.Representative
  end

  graphql do
    # Defaults to `true`, use this to disable authorization for the entire API (you probably only want this while prototyping)
    authorize? false

    # Validation errors are wrapped in a list of error objects under errors ,
    # also specified in the query.
    # AshGraphql does this by default instead of exposing errors in GraphQL’s
    # standard errors array. This behavior can be changed by setting root_level_errors? true in the graphql section of your Ash API module:

    # root_level_errors? true
  end
end
