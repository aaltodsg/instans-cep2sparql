# Execute EPA7 (with output) over INSTANS

# This version by mikko.rinne@aalto.fi 20.1.2016

# The separate script is needed because the --rdf-operations policy is different:
# "remove"-policy cannot be used when EPA7 (Compose) is executed independently, because otherwise both
# events (to be combined) will not be available at the same time (due to the remove-policy removing them one-by-one).

$INSTANS_HOME/bin/instans --prefix-encoding=true -r ../queries/EPA7.rq --input-blocks=../data/CEP2SPARQL_SamplePattern.trig --allow-rule-instance-removal=false --rdf-operations=add:execute-snapshot:flush --input-blocks=../data/$1.trig
