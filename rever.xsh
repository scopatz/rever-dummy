$GITHUB_ORG = 'scopatz'
$PROJECT = $GITHUB_REPO = 'rever-dummy'

$ACTIVITIES = ['tag', 'push_tag', 'ghrelease']


def asset():
    fname = $VERSION + '.txt'
    with open(fname, 'w') as f:
        f.write('custom asset')
    return fname


from rever.activities.ghrelease import git_archive_asset
$GHRELEASE_ASSETS = [asset, git_archive_asset]
