class Adventurelog.Views.AdventuresIndex extends Backbone.View

  template: JST['adventures/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this
