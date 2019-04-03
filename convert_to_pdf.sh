IFS='.' read -ra FILENAME <<< "$1"

SOURCE="Sources/${FILENAME}.md"
DESTINATION="Notes/${FILENAME}.pdf"

pandoc -s -V geometry:margin=1in -o ${DESTINATION} ${SOURCE}

echo "${DESTINATION} file generated."
