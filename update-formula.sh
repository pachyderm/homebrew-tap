#!/bin/bash

# Full URL looks like this:
# https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-dirty/pachctl_v1.0.1-dirty_darwin_amd64.zip
GITHUB_HOSTING_ROOT=https://github.com/pachyderm/pachyderm/releases/download
MACINTEL_BINARY_SUFFIX=_darwin_amd64.zip
MACARM_BINARY_SUFFIX=_darwin_arm64.zip
FORMULA=pachctl.rb.template

# e.g. convert from 1.3.4 -> 1.3
MAJOR_MINOR=`echo $VERSION | cut -f -2 -d "."`
# e.g. convert from 1.3 -> 13
MAJOR_MINOR_SQUASHED=`echo $MAJOR_MINOR | sed 's/\.//g'`

cp $FORMULA pachctl@$MAJOR_MINOR.rb

FORMULA="pachctl@$MAJOR_MINOR.rb"

# Linux doesn't allow a space after the -i flag in sed. OSX needs it.
AMDURL=$GITHUB_HOSTING_ROOT"/v"$VERSION"/pachctl_"$VERSION$MACINTEL_BINARY_SUFFIX
ARMURL=$GITHUB_HOSTING_ROOT"/v"$VERSION"/pachctl_"$VERSION$MACARM_BINARY_SUFFIX
# Put the file in place
### replace binary URL
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' -e "s|AMDURLPH|${AMDURL}|g" $FORMULA
  sed -i '' -e "s|ARMURLPH|${ARMURL}|g" $FORMULA
else
  sed -i'' -e "s|AMDURLPH|${AMDURL}|g" $FORMULA
  sed -i'' -e "s|ARMURLPH|${ARMURL}|g" $FORMULA
fi


### get binary and update SHA
echo "download: $AMDURL"
curl -L -o intelbin "$AMDURL"
echo "download: $ARMURL"
curl -L -o armbin "$ARMURL"
# Need sha256sum ... install on mac via: 'brew install coreutils'
# And then do 'ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum'
which sha256sum
sha256sum intelbin | cut -f 1 -d " " > INTELSHA
sha256sum armbin | cut -f 1 -d " " > ARMSHA
if [[ "$OSTYPE" == "darwin"* ]]; then
  cat INTELSHA | xargs -I NEWSHA sed -i '' -e "s|AMDSHAPH|NEWSHA|g" $FORMULA
  cat ARMSHA | xargs -I NEWSHA sed -i '' -e "s|ARMSHAPH|NEWSHA|g" $FORMULA
else
  cat INTELSHA | xargs -I NEWSHA sed -i'' -e "s|AMDSHAPH|NEWSHA|g" $FORMULA
  cat ARMSHA | xargs -I NEWSHA sed -i'' -e "s|ARMSHAPH|NEWSHA|g" $FORMULA
fi


### update version
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' 's/version ".*"/version "v'"$VERSION"'"/g' $FORMULA
  sed -i '' 's/class Pachctl/class PachctlAT'"$MAJOR_MINOR_SQUASHED"'/g' $FORMULA
else
  sed -i'' 's/version ".*"/version "v'"$VERSION"'"/g' $FORMULA
  sed -i'' 's/class Pachctl/class PachctlAT'"$MAJOR_MINOR_SQUASHED"'/g' $FORMULA
fi
