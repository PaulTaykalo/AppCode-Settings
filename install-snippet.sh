echo
if [[ -z $1 ]]; then
	echo "Please, specify snippet to insall"
	echo 
    echo "EXAMPLE:"
	echo "  install-snippet.sh templates/Objective_C.xml"
	echo
	exit
fi

if [[ ! -f $1 ]]; then
	echo "Sorry, couldn't find file $1"
	exit
fi	

APPCODE_PREFS_DIR=~/Library/Preferences/appCode20/templates
echo  "Copying file '$1' to ${APPCODE_PREFS_DIR}"

if [[ ! -e $APPCODE_PREFS_DIR ]]; then
    mkdir $APPCODE_PREFS_DIR
fi

cp "$1" $APPCODE_PREFS_DIR

echo "Restart AppCode to apply changes"
echo
