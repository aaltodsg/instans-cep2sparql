==================
CEP2SPARQL Example
==================

_Note: To run the example, INSTANS
(https://github.com/aaltodsg/instans) needs to be installed
(https://github.com/aaltodsg/instans/wiki). It is also assumed that
the $INSTANS_HOME environment variable points to the INSTANS root directory._

This example considers all the types of event processing agents listed in [1] and shows a translation of each type into
SPARQL 1.1, forming an interconnected SPARQL-based event processing
network. The background is explained in this article:

Rinne, M.; Nuutila, E.: Constructing Event Processing Systems of
Layered and Heterogeneous Events with SPARQL. The 13th International
Conference on Ontologies, DataBases, and Applications of Semantics
(ODBASE 2014, 27-31 Oct, Amantea, Italy). First published by Springer.

Proceedings:
http://link.springer.com/chapter/10.1007/978-3-662-45563-0_42
Paper:
http://www.cs.hut.fi/~mjrinne/papers/odbase2014/Constructing%20Event%20Processing%20Systems%20of%20Layered%20and%20Heterogeneous%20Events%20with%20SPARQL%20%28annotated%20author%20copy%29.pdf
Presentation: http://www.cs.hut.fi/~mjrinne/papers/odbase2014/Constructing%20Event%20Processing%20Systems%20with%20SPARQL.pdf

The command line to run the example is in the one-line shell script "cep2sparql.sh":

$ ./cep2sparql.sh

The example does not run a remote service query in EPA 3, but uses a
fixed local binding instead.

The following files are involved:
* _queries/EPA-All.rq:_ SPARQL implementation of eight types of event processing agents (EPA), interconnected.
* _cep2sparql.sh:_ The command line to run a verbose version with a small
number of test events.
* _queries/construct-event-output.rq:_ An auxiliary SPARQL query to CONSTRUCT
output of events passing between different EPAs.
* _input/CEP2SPARQL_SampleEvents.trig:_ The sample events in TriG format.
* _input/CEP2SPARQL_SamplePattern.trig:_ A sample pattern for pattern detection
(EPA 8) in TriG format.
* _sample-output/running\_sample.txt:_ Sample output produced by running
  _cep2sparql.sh_. The format is otherwise TriG, but since it also
  includes the execution timer outputs - which are not
  TriG-compliant - it is listed here as .txt.

[1] Etzion, Luckham, Niblett: Event Processing in Action. Manning Publications (Jul 2010)
