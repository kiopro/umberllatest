# Import all plugins from `rel/plugins`
# They can then be used by adding `plugin MyPlugin` to
# either an environment, or release definition, where
# `MyPlugin` is the name of the plugin module.
~w(rel plugins *.exs)
|> Path.join()
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: Mix.env()

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"v}%DHfY}ran0;XY&VOy7k%yV)cLYsa[*T^@khD>zO]&D/Xyy@Ote|Hc(xUxagtH;"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"AvoU>0Hm>pp<._7r}GZ?$<|=V~B{MJAzLzL%?&6IZ/*]_!zNbyi3vf@ylH?@07ix"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :umberllatest do
  set version: "0.1.0"

  set applications: [
    :runtime_tools,
    firstapp: :permanent,
    secondapp: :permanent
  ]
end

