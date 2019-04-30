referenced_controllers=$(find app/Http/Routes -name *.php | xargs cat | grep -o "[A-Za-z]*Controller" | sort | uniq)

contains () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

existing_controllers=$(find app/Http/Controllers -name '*Controller.php' -exec bash -c 'printf "%s\n" "${@%.*}"' _ {} + | xargs basename | sort | uniq)
for existing_controller in $existing_controllers; do
    contains "$existing_controller" ${referenced_controllers[@]}
    if [ $? == 1 ]; then
        echo "$existing_controller not in use"
    fi
done

