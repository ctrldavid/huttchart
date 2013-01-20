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

    render: ->
      #@messageView = new MessageView
      #@waitOn @append '.js-messages', @messageView

    appeared: ->
      #window.setInterval =>
      #  @append '.js-messages', new MessageView
      #, 1000

    loadView: (view) ->
      switch view
        when 'new'
          @currentView = new NewPlanChangeView
          @append '.js-content', @currentView


  class MessageView extends View
    template: (locals) ->
      "<pre style='margin:0px 8px;float:left;'>"+locals.message+"</pre>"

    init: ->
      @messages = [
        "Pants for everyone"
        "Yay pants"
        "Wat pants?"
        "These pants!"
      ]

    loaded: ->
      @locals.message = @messages[(Math.random()*@messages.length)|0]


  (new HuttApp).start()


