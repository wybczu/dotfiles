#!/bin/bash

OUTPUT_DIR="${HOME}/public_html/mutt"
VIEWING_URL="http://example.com/~user/mutt"

if [[ $# -ne 1 ]]; then
	echo "usage: $0 path to attachment"
	exit 1
fi

[[ -f "${HOME}/.view-attachment.rc" ]] && source "${HOME}/.view-attachment.rc"

if [[ ! -d "${OUTPUT_DIR}" ]]; then
	echo "Directory ${OUTPUT_DIR} does not exist!"
	exit 1
fi

ATTACHMENT_FILE="$1"
FILENAME="$( basename "${ATTACHMENT_PATH}" )"
TIMESTAMP="$( date '+%Y%m%d-%k%M%S' )"

mkdir -p "${OUTPUT_DIR}/${TIMESTAMP}"
cp "${ATTACHMENT_FILE}" "${OUTPUT_DIR}/${TIMESTAMP}"

echo "View attachment ${FILENAME} at ${VIEWING_URL}/${TIMESTAMP}/${FILENAME}"
read -rsp $'Press any key to continue...\n' -n 1 dummy 

