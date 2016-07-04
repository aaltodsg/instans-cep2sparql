# Execute speed tests over INSTANS
# Use an explicit input cleanup rule instead of the remove-poly (see --rdf-operations list)

# By mikko.rinne@aalto.fi 4.7.2016

for i in `seq 1 4` ; do
    INSTANSTIME=$(eval "$INSTANS_HOME/bin/instans --prefix-encoding=true --construct-output-trig=/dev/null -r ../queries/Input_cleanup.rq -r \"../queries/$1.rq\" --input-blocks=../data/CEP2SPARQL_SamplePattern.trig --allow-rule-instance-removal=false --rdf-operations=add:execute:flush --time=- --input-blocks=\"../data/$2.trig\"" | grep Done | sed 's/[^0-9+\.0-9+]//g')
    Echo "$1,$2,$i,$INSTANSTIME"
done
