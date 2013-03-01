SNIPPET=$1
XSLT=$2

if [[ -z $1 ]]; then
 SNIPPET="templates/Objective_C.xml"
fi

if [[ -z $2 ]]; then
 XSLT="xsl/snippet-to-terminal.xsl"
fi

echo "XSL     : ${XSLT}"
echo "SNIPPET : ${SNIPPET}"

xsltproc "${XSLT}" "${SNIPPET}" 
