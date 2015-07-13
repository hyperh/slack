FlowRouter.route "/", 
  subscriptions: (params, queryParams) ->

  action: (params, queryParams) ->
    FlowRouter.go "/general"

FlowRouter.route "/:channel",
  subscriptions: (params, queryParams) ->
    # limit = parseInt(params.foodsLimit) or LIMIT_STEP
  
    # sort = Long_Desc: 1
    # Session.set("active_sort", "Long_Desc")
    # Session.set("Long_Desc", sort.Long_Desc)

    # this.register('foods', Meteor.subscribe('foods', limit, sort))

    # this.register "foodGroups", Meteor.subscribe "foodGroups"
  
  action: (params, queryParams) ->
    Session.set "channel", params.channel
    FlowLayout.render 'room'