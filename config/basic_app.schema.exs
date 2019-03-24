@moduledoc """
A schema is a keyword list which represents how to map, transform, and validate
configuration values parsed from the .conf file. The following is an explanation of
each key in the schema definition in order of appearance, and how to use them.

## Import

A list of application names (as atoms), which represent apps to load modules from
which you can then reference in your schema definition. This is how you import your
own custom Validator/Transform modules, or general utility modules for use in
validator/transform functions in the schema. For example, if you have an application
`:foo` which contains a custom Transform module, you would add it to your schema like so:

`[ import: [:foo], ..., transforms: ["myapp.some.setting": MyApp.SomeTransform]]`

## Extends

A list of application names (as atoms), which contain schemas that you want to extend
with this schema. By extending a schema, you effectively re-use definitions in the
extended schema. You may also override definitions from the extended schema by redefining them
in the extending schema. You use `:extends` like so:

`[ extends: [:foo], ... ]`

## Mappings

Mappings define how to interpret settings in the .conf when they are translated to
runtime configuration. They also define how the .conf will be generated, things like
documention, @see references, example values, etc.

See the moduledoc for `Conform.Schema.Mapping` for more details.

## Transforms

Transforms are custom functions which are executed to build the value which will be
stored at the path defined by the key. Transforms have access to the current config
state via the `Conform.Conf` module, and can use that to build complex configuration
from a combination of other config values.

See the moduledoc for `Conform.Schema.Transform` for more details and examples.

## Validators

Validators are simple functions which take two arguments, the value to be validated,
and arguments provided to the validator (used only by custom validators). A validator
checks the value, and returns `:ok` if it is valid, `{:warn, message}` if it is valid,
but should be brought to the users attention, or `{:error, message}` if it is invalid.

See the moduledoc for `Conform.Schema.Validator` for more details and examples.
"""
[
  extends: [],
  import: [],
  mappings: [
    "basic_app.mongo_savvy.name": [
      commented: false,
      datatype: :atom,
      default: :mongo_savvy,
      doc: "Provide documentation for basic_app.mongo_savvy.name here.",
      hidden: false,
      to: "basic_app.mongo_savvy.name"
    ],
    "basic_app.mongo_savvy.pool": [
      commented: false,
      datatype: :atom,
      default: DBConnection.Poolboy,
      doc: "Provide documentation for basic_app.mongo_savvy.pool here.",
      hidden: false,
      to: "basic_app.mongo_savvy.pool"
    ],
    "basic_app.mongo_savvy.url": [
      commented: false,
      datatype: :binary,
      default: "mongodb://paybear.local:27017/paybear_staging",
      doc: "Provide documentation for basic_app.mongo_savvy.url here.",
      hidden: false,
      to: "basic_app.mongo_savvy.url"
    ],
    "basic_app.mongo_savvy.pool_size": [
      commented: false,
      datatype: :integer,
      default: 10,
      doc: "Provide documentation for basic_app.mongo_savvy.pool_size here.",
      hidden: false,
      to: "basic_app.mongo_savvy.pool_size"
    ],
    "basic_app.mongo_savvy.pool_overflow": [
      commented: false,
      datatype: :integer,
      default: 20,
      doc: "Provide documentation for basic_app.mongo_savvy.pool_overflow here.",
      hidden: false,
      to: "basic_app.mongo_savvy.pool_overflow"
    ],
    "basic_app.mongo_savvy.timeout": [
      commented: false,
      datatype: :integer,
      default: 20000,
      doc: "Provide documentation for basic_app.mongo_savvy.timeout here.",
      hidden: false,
      to: "basic_app.mongo_savvy.timeout"
    ],
    "basic_app.mongo_savvy.pool_timeout": [
      commented: false,
      datatype: :integer,
      default: 15000,
      doc: "Provide documentation for basic_app.mongo_savvy.pool_timeout here.",
      hidden: false,
      to: "basic_app.mongo_savvy.pool_timeout"
    ]
  ],
  transforms: [],
  validators: []
]