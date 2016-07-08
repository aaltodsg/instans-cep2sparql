# Execute batch_run.sh and compare the results with sample-output using diff.
# If everything is fine, there should be no differences indicated.
# Delete the batch_run results

# By mikko.rinne@aalto.fi 8.7.2016

./batch_run.sh > 1k_remove_policy.txt

echo "Diff results for remove-policy (left) and sample-output/batch_run_output.txt (right)"
diff -y -W 150 --suppress-common-lines 1k_remove_policy.txt ../sample-output/batch_run_output.txt 

# Clean up
rm -f 1k_remove_policy.txt
