# Execute both:
# - batch_run.sh
# - batch_run_cleanup.sh
# Compare the results using diff. If everything is fine, there should be no differences indicated.
# Delete the result files

# By mikko.rinne@aalto.fi 4.7.2016

./batch_run.sh > 1k_remove_policy.txt
./batch_run_cleanup.sh > 1k_cleanup_rule.txt

echo "Diff results for remove-policy (left) and cleanup-rule (right)"
diff -y -W 150 --suppress-common-lines 1k_remove_policy.txt 1k_cleanup_rule.txt 

# Clean up
rm -f 1k_remove_policy.txt
rm -f 1k_cleanup_rule.txt
