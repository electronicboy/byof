nms="net/minecraft"
	if [ ! -f "$target" ]; then
	  export MODLOG="$MODLOG  Imported $file from mc-dev\n";
		mkdir -p "$(dirname "$target")"
		cp "$base" "$target" || exit 1
	  echo "$(bashColor 1 33) UN-NEEDED IMPORT STATEMENT:$(bashColor 1 34) $file $(bashColorReset)"
function importLibrary {
    group=$1
    lib=$2
    prefix=$3
    shift 3
    for file in "$@"; do
        file="$prefix/$file"
        target="$basedir/Paper/Paper-Server/src/main/java/${file}"
        targetdir=$(dirname "$target")
        mkdir -p "${targetdir}"
        base="$workdir/Minecraft/$minecraftversion/libraries/${group}/${lib}/$file"
        if [ ! -f "$base" ]; then
            echo "Missing $base"
            exit 1
        fi
        export MODLOG="$MODLOG  Imported $file from $lib\n";
        sed 's/\r$//' "$base" > "$target" || exit 1
    done
}

	cd "$basedir/Paper/Paper-Server/"
	if [[ "$lastlog" = *"Extra mc-dev Imports"* ]]; then
files=$(cat "$basedir/patches/server/"* | grep "+++ b/src/main/java/net/minecraft/" | sort | uniq | sed 's/\+\+\+ b\/src\/main\/java\/net\/minecraft\///g')
nonnms=$(grep -R "new file mode" -B 1 "$basedir/patches/server/" | grep -v "new file mode" | grep -oE --color=none "net\/minecraft\/.*.java" | sed 's/.*\/net\/minecraft\///g')
function containsElement {
	local e
	for e in "${@:2}"; do
		[[ "$e" == "$1" ]] && return 0;
	done
	return 1
}
		if [ ! -f "$basedir/Paper/Paper-Server/src/main/java/net/minecraft/$f" ]; then
			f="$(echo "$f" | sed 's/.java//g')"
				error=true
if [ -n "$error" ]; then
  exit 1
fi

########################################################
########################################################
########################################################
#              LIBRARY IMPORTS
# These must always be mapped manually, no automatic stuff
#
# importLibrary    # group    # lib          # prefix               # many files
# importLibrary com.mojang datafixerupper com/mojang/datafixers/types Type.java

# dont forget \ at end of each line but last

########################################################
########################################################
########################################################
	cd $basedir/Paper/Paper-Server/
	echo -e "Extra mc-dev Imports\n\n$MODLOG" | git commit src -F -