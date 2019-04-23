sfdx force:org:create -a recipes -s -f config/project-scratch-def.json -d 7
sfdx force:source:push
sfdx force:user:permset:assign -n recipes
sfdx force:data:tree:import --plan ./data/data-plan.json
sfdx force:org:open -p /lightning/page/home