# EPA3 (Enrich) run with remote service query

# By mikko.rinne@aalto.fi 4.7.2016

# Use remove-policy (instead of cleanup-rule)

echo -e "\n\n\nEPA3 (Enrich) federated service query"
$INSTANS_HOME/bin/instans --prefix-encoding=true -r ../queries/EPA3_service.rq --input-blocks=../data/CEP2SPARQL_SamplePattern.trig --allow-rule-instance-removal=false --rdf-operations=add:execute-snapshot:remove:execute:flush --time=- --input-blocks=../data/100events.trig


