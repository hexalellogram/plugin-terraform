function __terraform.init
    function __terraform.create_abbr -d "Create Terraform plugin abbreviation"
        set -l name $argv[1]
        set -l body $argv[2..-1]
    
        abbr -a -g $name $body
    end

    # terraform abbreviations
    __terraform.create_abbr tf      terraform
    __terraform.create_abbr tfa     terraform apply
    __terraform.create_abbr tfaa    terraform apply -auto-approve
    __terraform.create_abbr tfc     terraform console
    __terraform.create_abbr tfd     terraform destroy
    __terraform.create_abbr tfd!    terraform destroy -auto-approve
    __terraform.create_abbr tff     terraform fmt
    __terraform.create_abbr tffr    terraform fmt -recursive
    __terraform.create_abbr tfi     terraform init
    __terraform.create_abbr tfir    terraform init -reconfigure
    __terraform.create_abbr tfiu    terraform init -upgrade
    __terraform.create_abbr tfiur   terraform init -upgrade -reconfigure
    __terraform.create_abbr tfo     terraform output
    __terraform.create_abbr tfp     terraform plan
    __terraform.create_abbr tfv     terraform validate
    __terraform.create_abbr tfs     terraform state
    __terraform.create_abbr tfsl    terraform state list # this is not from the oh-my-zsh plugin, this is something that I have added myself
    __terraform.create_abbr tfss    terraform state show # this is not from the oh-my-zsh plugin, this is something that I have added myself
    __terraform.create_abbr tft     terraform test
    __terraform.create_abbr tfsh    terraform show

    functions -e __terraform.create_abbr
end