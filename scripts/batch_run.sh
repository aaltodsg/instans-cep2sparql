# Batch running of Event Processing Agents (EPA) with test files

# By mikko.rinne@aalto.fi 20.1.2016

# Each individual EPA and the combination of all EPAs is executed on 1000 events
# Modify as needed to run other event files

echo -e "\n\n\nEPA1 (Stateless filter)"
./EPArun.sh EPA1 1000events

echo -e "\n\n\nEPA2 (Stateful filter)"
./EPArun.sh EPA2 1000events

echo -e "\n\n\nEPA3 (Enrich) local"
./EPArun.sh EPA3_local 1000events

echo -e "\n\n\nEPA4 (Project) - using input from EPA3 local"
./EPArun.sh EPA4 EPA3_1000events

echo -e "\n\n\nEPA5 (Split)"
./EPArun.sh EPA5 1000events

echo -e "\n\n\nEPA6 (Aggregate)"
./EPArun.sh EPA6 1000events

echo -e "\n\n\nEPA7 (Compose) - using input from EPA5"
./EPA7run.sh EPA5_1000events

echo -e "\n\n\nEPA8 (Pattern detection)"
./EPArun.sh EPA8 1000events

echo -e "\n\n\nEPA-All (Combination of all agents)"
./EPArun.sh EPA-All 1000events
