def get_branch_name_by_key(key)
    params = {"supplier"=>{"name"=>"Test lay params", "tax_number"=>"0110254854", "address"=>"Tokyo", "supplier_type"=>"personal", "bank_accounts"=>{"0"=>{"account"=>"847445", "branch_name"=>"VCB"}, "1"=>{"account"=>"985784", "branch_name"=>"ACB", "_destroy"=>"false"}}}}
    p params["supplier"]["bank_accounts"][key]["branch_name"]
end

def add_type_to_hash(key, value)
    params = {"supplier"=>{"name"=>"Test lay params", "tax_number"=>"0110254854", "address"=>"Tokyo", "supplier_type"=>"personal", "bank_accounts"=>{"0"=>{"account"=>"847445", "branch_name"=>"VCB"}, "1"=>{"account"=>"985784", "branch_name"=>"ACB", "_destroy"=>"false"}}}}
    params[key] = value
    p params
end

p "==============Result:==============="
get_branch_name_by_key("1")
add_type_to_hash("type", "personal")
p "===================================="