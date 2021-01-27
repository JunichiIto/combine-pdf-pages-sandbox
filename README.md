# combine-pdf-pages-sandbox

Sample script for combine_pdf

## How to run

```
bundle install
bundle exec ruby sample.rb
```

The result will be:

```
# with combine_pdf 1.0.20 (Success)
Run options: --seed 51809

# Running:

.

Finished in 0.013928s, 71.7978 runs/s, 71.7978 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

```
# with combine_pdf 1.0.21 (Failed)
Run options: --seed 3965

# Running:

Couldn't connect reference for {:is_reference_only=>true, :indirect_generation_number=>0, :indirect_reference_id=>6, :referenced_object=>nil}
couldn't follow reference!!! {:is_reference_only=>true, :referenced_object=>nil} not found!
couldn't follow reference!!! {:is_reference_only=>true, :referenced_object=>nil} not found!
couldn't follow reference!!! {:is_reference_only=>true, :referenced_object=>nil} not found!
F

Finished in 0.006837s, 146.2630 runs/s, 146.2630 assertions/s.

  1) Failure:
SampleTest#test_create_pdf [sample.rb:19]:
Expected: 3
  Actual: 2

1 runs, 1 assertions, 1 failures, 0 errors, 0 skips
```
