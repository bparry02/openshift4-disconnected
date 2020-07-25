export OCP_RELEASE="4.5.1-x86_64"
export LOCAL_REG='localhost:5000'
export LOCAL_REPO='ocp4/openshift4'
export LOCAL_REG_INSEC='true'
export UPSTREAM_REPO='openshift-release-dev'

# Registry where cluster images live for the disconnected cluster
export REMOTE_REG="localhost:5000"

# This needs to be a pull secret that combines the pull secret from Red Hat
# to pull all the images down and a pull secret from your local registry so we
# can push to it
export LOCAL_SECRET_JSON="${HOME}/pull-secret.json"
export RELEASE_NAME="ocp-release"

# Set these values to true for the catalog and miror to be created
export RH_OP='true'
export CERT_OP='false'
export COMM_OP='false'

export RH_OP_REPO="${LOCAL_REG}/olm/redhat-operators:v1"
export CERT_OP_REPO="${LOCAL_REG}/olm/certified-operators:v1"
export COMM_OP_REPO="${LOCAL_REG}/olm/community-operators:v1"

export OPERATOR_REGISTRY='quay.io/operator-framework/operator-registry-server:v1.6.1'

# This is either the directory backing the local podman registry, i.e; /opt/registry/data
# Or this is the directory where the images will be mirrored to/from if using --to-dir
export DATA_DIR="/opt/registry/data/docker/"
