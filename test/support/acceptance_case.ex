defmodule ConcurrentAcceptance.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Hound.Helpers

      import Ecto.Model
      import Ecto.Query, only: [from: 2]
      import ConcurrentAcceptance.Router.Helpers

      alias ConcurrentAcceptance.Repo

      @endpoint ConcurrentAcceptance.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ConcurrentAcceptance.Repo)
    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(ConcurrentAcceptance.Repo, self())
    Hound.start_session(metadata: metadata)
    :ok
  end
end
