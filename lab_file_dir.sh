#!/bin/bash
# Take care to only perform this operation in user-created directories. Changing permissions in system files/directories is not advised, as this can cause malfunctions in the OS.
# Create a new bash script that performs the following:
# Prompts user for input directory path or file.
 echo "Enter the directory path"
 read target_path

 if [[ ! -e "$target_path" ]]; then
 echo "The '$target_path' does not exist."
 exit 1
 fi


# Prompts user for input permissions number (e.g. 777 to perform a chmod 777, 775, 664)

echo "Enter the number of permissions"
read permissions    

# Navigates to the directory input by the user and changes all files inside it to the input setting.

if [[ -d "$target_path" ]]; then
chmod -R $permissions  "$target_path"
echo "Permissions changed"
elif [[ -f "$target_path" ]]; then
    chmod "$permissions" "$target_path"
    echo "Changed permissions for file: $target_path"

else "The path is neither a directory nor a file."
exit 2
fi

echo "Current permissions"
ls -l "$target_path"

# Prints to the screen the directory contents and the new permissions settings of everything in the directory or file you selected.