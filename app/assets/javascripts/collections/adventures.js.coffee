class Adventurelog.Collections.Adventures extends Backbone.Collection

  model: Adventurelog.Models.Adventure

  url: '/api/adventures'
