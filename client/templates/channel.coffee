Template.channel.helpers
  active: ->
    if Session.get("channel") is this.name
      "active"
    else
      ""