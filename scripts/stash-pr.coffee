stashUrl = process.env.HUBOT_STASH_URL
stashProjectId = process.env.HUBOT_STASH_PROJECT_ID
stashRepoId = process.env.HUBOT_STASH_REPO_ID

module.exports = (robot) ->
  robot.hear /PR\s*?#?\s*?(\d+?)/i, (res) ->
    pr = res.matches[1]
    res.send 'PR #' + pr + ': ' + stashUrl + '/projects/' +
      stashProjectId.toUpperCase() + '/repos/' +
      stashRepoId.toLowerCase() + '/pull-request/' +
      res.matches[1] + /overview'
