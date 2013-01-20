define [
  '$'
  'view'
  'templates/new'
  'templates/stage'
], ($, View, newTpl, stageTpl) ->

  class NewPlanChangeView extends View
    template: newTpl
    render: ->

  class StageView extends View
    template: stageTpl

    init: ->

    loaded: ->

  {NewPlanChangeView}