define [
  '$'
  'view'
  'application'
  'templates/layout'
  'views/new'
], ($, View, Application, layoutTpl, {NewPlanChangeView}) ->

  class HuttApp extends Application
    title: 'Hutt yo'
    template: layoutTpl
    events: 
      'click .js-new': -> @loadView 'new'

    init: ->
      @currentView = null

    loadView: (view) ->
      @currentView.unload() if @currentView?
      switch view
        when 'new'
          @currentView = new NewPlanChangeView
      
      @append '.js-content', @currentView


  (new HuttApp).start()


