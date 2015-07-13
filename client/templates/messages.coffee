Template.messages.onCreated ->
  self = this
  self.autorun ->
    self.subscribe "messages", Session.get "channel"

Template.messages.helpers  
  messages: -> Messages.find()