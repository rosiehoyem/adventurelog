class Adventurelog.Collections.Entries extends Backbone.Collection

  model: Adventurelog.Models.Entry

  url: '/api/entries'
