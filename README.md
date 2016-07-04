==================
CEP2SPARQL Example
==================

_Note: To run the example, [INSTANS](https://github.com/aaltodsg/instans) needs to be [installed](https://github.com/aaltodsg/instans/wiki). It is also assumed that
the $INSTANS_HOME environment variable points to the INSTANS root directory._

This example considers all the types of event processing agents listed in [1] and shows a translation of each type into
SPARQL 1.1, forming an interconnected SPARQL-based event processing
network. Further background:

Rinne, M.; Nuutila, E.: [Constructing Event Processing Systems of
Layered and Heterogeneous Events with SPARQL](http://link.springer.com/chapter/10.1007/978-3-662-45563-0_42). The 13th International
Conference on Ontologies, DataBases, and Applications of Semantics
(ODBASE 2014, 27-31 Oct, Amantea, Italy). First published by Springer.

* [Paper](http://www.cs.hut.fi/~mjrinne/papers/odbase2014/Constructing%20Event%20Processing%20Systems%20of%20Layered%20and%20Heterogeneous%20Events%20with%20SPARQL%20%28annotated%20author%20copy%29.pdf)
* [Presentation](http://www.cs.hut.fi/~mjrinne/papers/odbase2014/Constructing%20Event%20Processing%20Systems%20with%20SPARQL.pdf)

A quick test is included in the one-line shell script "cep2sparql.sh":

$ ./cep2sparql.sh

This example runs a combination of all the 8 types of event processing
agents introduced in the paper. A sample output for comparison of the result is
available in _sample-output/cep2sparql\_output.txt_ .

The `scripts` directory contains the following batch files, which
serve also as command line parameter reference for individual trials:

* `batch_test.sh` runs the sample events through each type of EPA separately
  as well as the EPA-All combination. Sample results in
  _sample-output/batch\_test\_output.txt_ . Please note that this
  batch also runs EPA3 over the remote SERVICE request and therefore
  needs a network connection.
* `batch_run.sh` runs 1000 events through each type of EPA separately
  as well as the EPA-All combination using the INSTANS remove-policy
  to clean input events after processing. Sample results in
  _sample-output/batch\_run\_output.txt_ .
* `batch_run_cleanup.sh` runs 1000 events through each type of EPA separately
  as well as the EPA-All combination using an explicit cleanup-rule
  (instead of the remove-policy) where applicable. Results should be
  the same as above.
* `compare_remove_cleanup.sh` runs both `batch_run.sh` and
  `batch_run_cleanup.sh`, saves the results to temporary files, runs
  `diff` over the files and deletes them. If everything is fine, no
  differences between the two files are indicated.  
* `batch_speed.sh` measures the execution speed of each EPA separately
  as well as the EPA-All combination for 1, 100, 1000 and 10000
  events using the explicit remove-policy in all applicable cases (not
  EPA7 stand-alone). Sample results executed on our platform in
  _sample-output/batch\_speed\_results.txt_ .
* `batch_speed_cleanup.sh` measures the execution speed of each
  applicable EPA for 1, 100, 1000 and 10000
  events using an explicit cleanup-rule in all applicable cases (not
  EPA8 or EPA-All). Sample results executed on our platform in
  _sample-output/batch\_speed\_results\_cleanup.txt_ .
* `EPA3run_remote.sh` runs 100 events using the real federated SERVICE
  query once and measures the speed of execution. Needs a NW connection.  

Formatted results can be found in the _results_ folder.

[1] Etzion, Luckham, Niblett: Event Processing in Action. Manning Publications (Jul 2010)
