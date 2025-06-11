# omf initialization.
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing __terraform.init.fish before calling __terraform.init.
set -l __terraform_init_path "$path/functions/__terraform.init.fish"
if [ -f "$__terraform_init_path" ];
    source "$__terraform_init_path"
end
__terraform.init