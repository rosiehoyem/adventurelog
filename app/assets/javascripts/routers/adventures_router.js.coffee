class Adventurelog.Routers.Adventures extends Backbone.Router

routes:
    '': 'index'
    'adventures/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collections.Adventures()
    @collection.fetch()

  index: ->
    view = new Raffler.Views.AdventuresIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Adventure #{id}"
