@Messages = new Mongo.Collection("messages")

# Meteor.startup ->
#   if Messages.find().count() is 0
#     for i in [1..10]
#       Messages.insert {text: "A dummy message"}