input_file="git.diff"
temp_file="temp_diff_file.diff"

# Check if the commands exist on the host
for cmd in tac awk sed; do
  command -v "${cmd}" > /dev/null 2>&1 || { echo "Missing command: ${cmd}" && exit 1; }
done

# Check that the file exists before performing actions on it
if [ ! -s "$input_file" ]; then
  echo "Diff file missing!"
  exit 1
fi

# Reverse the file, remove 4 lines after '+++ /dev/null', then reverse it back (editors can't go backwards - to remove lines above)
tac "$input_file" > "$temp_file"
sed '/+++ \/dev\/null/{n;N;N;N;d;}' "$input_file" > "$temp_file" && mv "$temp_file" "$input_file"
tac "$input_file" > "$temp_file" && mv "$temp_file" "$input_file"

# Remove the lines between '+++ /dev/null' (included) and 'diff --git a/'
awk '
  BEGIN { in_block=0 }
  /\+\+\+ \/dev\/null/ { in_block=1; next }
  in_block && /diff --git a\// { in_block=0; print; next }
  !in_block
' "$input_file" > "$temp_file"

# Check that the file exists before performing actions on it
if [ -s "$temp_file" ]; then
  mv "$temp_file" "$input_file"
else
  echo "Temp diff file missing!"
  exit 1
fi

exit 0