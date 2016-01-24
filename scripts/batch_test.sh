# Batch testing of Event Processing Agents (EPA) using sample events

# By mikko.rinne@aalto.fi 20.1.2016

# Each individual EPA and the combination of all EPAs is executed on the set
# of 12 sample events with output

echo -e "\n\n\nEPA1 (Stateless filter)"
./EPAtest.sh EPA1 CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA2 (Stateful filter)"
./EPAtest.sh EPA2 CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA3 (Enrich) local"
./EPAtest.sh EPA3_local CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA3 (Enrich) remote service"
./EPAtest.sh EPA3_service CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA4 (Project) - using input from EPA3 local"
./EPAtest.sh EPA4 EPA3_SampleEvents

echo -e "\n\n\nEPA5 (Split)"
./EPAtest.sh EPA5 CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA6 (Aggregate)"
./EPAtest.sh EPA6 CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA7 (Compose) - using input from EPA5"
./EPA7test.sh

echo -e "\n\n\nEPA8 (Pattern detection)"
./EPAtest.sh EPA8 CEP2SPARQL_SampleEvents

echo -e "\n\n\nEPA-All (Combination of all agents)"
./EPAtest.sh EPA-All CEP2SPARQL_SampleEvents
