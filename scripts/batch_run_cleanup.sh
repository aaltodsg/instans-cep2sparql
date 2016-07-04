# Batch running of Event Processing Agents (EPA) with test files
# Using the cleanup-rule on EPAs 1, 2, 3, 4, 5, 6, 7

# By mikko.rinne@aalto.fi 4.7.2016

# Each individual EPA and the combination of all EPAs is executed on 1000 events
# EPAs 1-6 are executed with an explicit cleanup-rule on the input events to clear the input queue.
# EPA7 always uses the cleanup-rule, as it does not work stand-alone with an explicit remove-policy
#      (because it requires both of the two input-events to be present simultaneously)
# EPAs 7-8 and EPA-All are present for completeness, to enable diff-comparisons with batch_run without cleanup

echo -e "\n\n\nEPA1 (Stateless filter)"
./EPArun_cleanup.sh EPA1 1000events

echo -e "\n\n\nEPA2 (Stateful filter)"
./EPArun_cleanup.sh EPA2 1000events

echo -e "\n\n\nEPA3 (Enrich) local"
./EPArun_cleanup.sh EPA3_local 1000events

echo -e "\n\n\nEPA4 (Project) - using input from EPA3 local"
./EPArun_cleanup.sh EPA4 EPA3_1000events

echo -e "\n\n\nEPA5 (Split)"
./EPArun_cleanup.sh EPA5 1000events

echo -e "\n\n\nEPA6 (Aggregate)"
./EPArun_cleanup.sh EPA6 1000events

echo -e "\n\n\nEPA7 (Compose) - using input from EPA5, always cleanup-rule"
./EPA7run.sh EPA5_1000events

echo -e "\n\n\nEPA8 (Pattern detection) - always remove-policy"
./EPArun.sh EPA8 1000events

echo -e "\n\n\nEPA-All (Combination of all agents) - always remove-policy"
./EPArun.sh EPA-All 1000events
