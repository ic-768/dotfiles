#!/usr/bin/sh

# Creates a React component boilerplate directory. Populates it with:
#   1) jsx / tsx file
#   2) css / scss file
#   3) index.js file that exports the component component

# Arguments:
#   1) Name for the React component
#   2) Target directory
#   3) Optional flags

# Flags:
#   -t) Specify if using typescript for React component
#   -s) Specify if style should be scss instead of css
#   -c) Specify if component directory should be capitalised (has no effect if argument is already capitalised)



component_name="$1"
shift
target_dir="$1"
shift
capitalised_name=$(echo "$component_name" | awk '{$1=toupper(substr($1,0,1))substr($1,2)}1')

componentBody="const $capitalised_name = () => {
return <div> $capitalised_name </div>
}

export default $capitalised_name
"

indexBody="import $capitalised_name from \"./$capitalised_name\"\n
export default $capitalised_name"


help(){
	echo "Bad component name or flag.

	Expects the React component name as parameter.

	Optional flags: 
	-t) Create typescript component.
	-s) Use .scss instead of .css for style.
	-c) Use if you want the directory capitalised
	"
}

main(){
	component_extension="jsx"
	css_extension="css"
	capitalise_directory=false

	while getopts ":tsc" opt; do
		case $opt in
			t) component_extension="tsx";;
			s) css_extension="scss";;
			c) capitalise_directory=true;;
			*) help; exit 1;;
		esac
	done

	cd "$target_dir" || exit

	if [ "$capitalise_directory" = true ]; 
	then componentDirectory="$capitalised_name"; 
	else componentDirectory="$component_name"; 
	fi

	mkdir "$componentDirectory";
	echo "$componentBody" >> "$componentDirectory"/"$capitalised_name"."$component_extension"
	touch "$componentDirectory"/"$capitalised_name"."$css_extension"
	echo "$indexBody">> "$componentDirectory"/index.js

}




main "$@" # call main with all arguments

