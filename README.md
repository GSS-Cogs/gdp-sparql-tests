
### Review of IC SPARQL tests.

Status as of: 5/2/2020

Where feasible, if a test is failing because we don't fully prescribe to the assumed datacube model, I've tried to get to the same result via alternate logic.

Where enabled is False the test has been passing trivially, sp I've removed the .sparql from the files to stop the test runner picking them up but have otherwise left them intact.

| IC Number | Enabled       | Comments                   
| --------------------------- | -----------------------------------|----------------
ic-01-unique_dataset | True  | Appear to be working.
ic-02-unique_dsd | True | Appear to be working.
ic-03-dsd-includes-measure | True | Appear to be working.
ic-04-dimensions-have-range | True |  Appear to be working.
ic-05-concept_dimensions_have_code_lists | False | Whether a dimension has a codelist is currently determined by the value_template column field during the transformation stage. I couldn't find a means of applying "should have codelist?" after the fact, as without that distinction it appears as though arbitrary. This probably needs to be validating during the initial transformation stage, rather than here.
ic-06-only_attributes_may_be_optional | False | We don't appear to be using qb:componentRequired at all.
ic-07-slice_keys_must_be_declared | False | We don't appear to be using qb:SliceKey at all.
ic-08-slice_keys_consistent_with_dsd | False | We don't appear to be using qb:SliceKey at all.
ic-09-unique_slice_structure | False | We don't appear to be using qb:Slice at all.
ic-10-slice_dimensions_complete | False | We don't appear to be using qb:Slice at all.
ic-11-all_dimensions_required | True | Updated to run against our datacubes.
ic-12-no_duplicate_observations | True | Updated to run against our datacubes.
ic-13-required_attributes | False | We don't appear to be using qb:componentRequired at all.
ic-14-all_measures_present | True? | Made logical change to how we identify a measure dimension, but unable to test in practice as we don't have an example of this scenario.
ic-15-measure_dimension_consistent | True | Removed blocking line, should be working now.
ic-16-single_measure_on_measure_dimension_observation | True | Not perfect, but new query will compare distinct measures against observations with all measures against observations. Should work.
ic-17-all_measures_present_in_measures_dimension_cube | False | Disabled as (_I think_) its assuming a non sparse cube (we're a ways off having those). Previously passing trivially as assuming a structure we don't use.
ic-18-consistent_data_set_links | False | Disabled as we dont use qb:slice (_note - might be able to get here via different logic, but ran out of time_)
ic-19a-codes_from_code_list | True | Couldn't tell, have left this on for now.
ic-19b-codes_from_code_list | True  | Couldn't tell, have left this on for now.
