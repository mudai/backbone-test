class Backbone.Models.Test extends Backbone.Model
  paramRoot: 'test'

  defaults:

class Backbone.Collections.TestsCollection extends Backbone.Collection
  model: Backbone.Models.Test
  url: '/tests'
