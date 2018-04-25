defmodule Membrane.Element.Lame.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      nifs: nifs(Bundlex.platform())
    ]
  end

  def nifs(_platform) do
    [
      encoder: [
        sources: ["encoder.c"],
        deps: [membrane_common_c: :membrane],
        pkg_configs: ["lame"]
      ]
    ]
  end
end
