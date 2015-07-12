Accounts.ui.config {
  passwordSignupFields: "USERNAME_AND_EMAIL"
  }

Template.registerHelper "usernameFromId", (userId) ->
  console.log userId
  user = Meteor.users.findOne {_id: userId}
  if typeof user is "undefined"
    "Anon"
  if typeof user.services.github isnt "undefined"
    user.services.github.username
  user.username

Template.registerHelper "timestampToTime", (timestamp) ->
  date = new Date(timestamp)
  hours = date.getHours()
  minutes = "0" + date.getMinute()
  seconds = "0" + date.getSeconds()
  hours + ":" + minutes.substr(minutes.length-2) + ":" + seconds.substr(seconds.length-2)