$GITHUB_ORG = 'scopatz'
$PROJECT = $GITHUB_REPO = 'rever-dummy'

$ACTIVITIES = ['tag', 'push_tag', 'ghrelease']


def asset():
    fname = $VERSION + '.txt'
    with open(fname, 'w') as f:
        f.write('custom asset')
    return fname


$GHRELEASE_ASSETS = [asset]
