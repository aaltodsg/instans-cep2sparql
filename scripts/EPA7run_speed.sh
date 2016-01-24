# Execute speed tests of EPA7 over INSTANS

# This version by mikko.rinne@aalto.fi 20.1.2016

# The separate script is needed because the --rdf-operations policy is different:
# "remove"-policy cannot be used when EPA7 (Compose) is executed independently, because otherwise both
# events (to be combined) are not available at the same time.

for i in `seq 1 4` ; do
    INSTANSTIME=$(eval "$INSTANS_HOME/bin/instans --prefix-encoding=true --construct-output-trig=/dev/null -r ../queries/EPA7.rq --input-blocks=../data/CEP2SPARQL_SamplePattern.trig --allow-rule-instance-removal=false --rdf-operations=add:execute-snapshot:flush --time=- --input-blocks=\"../data/$1.trig\"" | grep Done | sed 's/[^0-9+\.0-9+]//g')
    Echo "EPA7,$1,$i,$INSTANSTIME"
done
