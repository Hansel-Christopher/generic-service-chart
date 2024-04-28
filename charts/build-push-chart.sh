CHART_DIR="$1"
VERSION=$(grep 'version:' $CHART_DIR/Chart.yaml | cut -d ':' -f 2 | tr -d ' ')

# Validate version
if [ -z "$VERSION" ]; then
  echo "Version not found in Chart.yaml"
  exit 1
fi

helm package service-chart
helm push service-chart-$VERSION.tgz oci://registry-1.docker.io/hanselchristopher001

rm service-chart-$VERSION.tgz
