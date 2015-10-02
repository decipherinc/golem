stashUrl = process.env.HUBOT_STASH_URL.toLowerCase()
stashProjectId = process.env.HUBOT_STASH_PROJECT_ID.toUpperCase()
stashRepoId = process.env.HUBOT_STASH_REPO_ID.toLowerCase()

module.exports = (robot) ->
  robot.hear /PR\s*?#?\s*?(\d+)/i, (res) ->
    pr = res.match[1]

    res.send "PR ##{pr}: #{stashUrl}/projects/#{stashProjectId}/repos/#{stashRepoId}/pull-request/#{pr}/overview"
