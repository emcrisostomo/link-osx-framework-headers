#!/bin/zsh

framework_roots=( "/System/Library/Frameworks" "/Library/Frameworks" )
headers_name="Headers"

if (( $# > 0 ))
then
  frameworks=( $@ )
else
  for framework_root in ${framework_roots}
  do
    fmw=( ${framework_root}/*.framework(N) )

    for f in $fmw
    do
      print -- ${f}
    done
  done

  return 1
fi

# main
found_current=false

for framework in ${frameworks}
do
  found_current=false

  for framework_root in ${framework_roots}
  do
    if ${found_current}
    then
      continue
    fi

    framework_dir=${framework_root}/${framework}.framework
    if [[ ! -d ${framework_dir} ]]
    then
      continue
    fi

    find ${framework_dir} -type d -name "*.framework" -print0 | while read -d '' i
    do
      current_dir="${i}/${headers_name}"
      if [[ -d ${current_dir} ]]
      then
        ln -s ${current_dir} ${${i:t}:r}
        found_current=true
      fi
    done
  done
  
  if ! ${found_current} 
  then
    print -u 2 "Framework $framework not found. Skipping"
  fi
done
