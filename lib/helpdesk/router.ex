defmodule Helpdesk.Router do
  use Plug.Router
  plug(AshGraphql.Plug)

  forward("/gql",
    to: Absinthe.Plug,
    init_opts: [schema: Helpdesk.Schema]
  )

  forward("/playground",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [
      schema: Helpdesk.Schema,
      interface: :playground
    ]
  )
end
