# Description:
#  A way to get stats about alex's betrayal
#
# Commands:
#  hubot alex left - displays the amount of days and number of 'weekly' lunches since alex left
#

oneDay = 24*60*60*1000
dayLeft = new Date('4/7/2017')
dayToday = new Date()
daysSince = Math.round(Math.abs((dayLeft.getTime() - dayToday.getTime()))/(oneDay))

module.exports = (robot) ->
  robot.respond /.*alex left.*$/gi, (msg) ->
    msg.send "Alex has been gone *#{daysSince}* days, and you've gone on *0* 'weekly' lunches."
