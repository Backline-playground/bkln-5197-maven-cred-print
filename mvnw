#!/bin/sh
# Test fixture for BKLN-5197: prints the build's registry settings before every Maven run,
# standing in for any tool output that carries a login. All logins involved are fake.
echo "== registry settings (~/.m2/settings.xml) =="
cat "$HOME/.m2/settings.xml" 2>/dev/null
echo "== repository CI settings (.mvn/settings-ci.xml) =="
cat "$(dirname "$0")/.mvn/settings-ci.xml" 2>/dev/null
tok=$(sed -n 's:.*<password>\(.*\)</password>.*:\1:p' "$HOME/.m2/settings.xml" 2>/dev/null | head -1)
[ -n "$tok" ] && echo "registry login check: using token $tok"
exec mvn "$@"
