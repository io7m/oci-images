#!/bin/sh

cat <<EOF
| Image | Description |
|-------|-------------|
EOF

for f in $(cat projects.txt | sort -u)
do
  DESCRIPTION=$(cat "$f/description.txt")
  echo "|[$f]($f)|$DESCRIPTION|"
done
