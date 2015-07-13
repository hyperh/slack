Meteor.subscribe "allUsernames"
Meteor.subscribe "channels"

Accounts.ui.config {
  passwordSignupFields: "USERNAME_AND_EMAIL"
  }

Template.registerHelper "usernameFromId", (userId) ->
  user = Meteor.users.findOne {_id: userId}
  if typeof user is "undefined"
    return "Anon"
  if typeof user.services.github isnt "undefined"
    return user.services.github.username
  return user.username

Template.registerHelper "timestampToTime", (timestamp) ->
  date = new Date(timestamp)
  hours = date.getHours()
  minutes = "0" + date.getMinutes()
  seconds = "0" + date.getSeconds()
  hours + ":" + minutes.substr(minutes.length-2) + ":" + seconds.substr(seconds.length-2)