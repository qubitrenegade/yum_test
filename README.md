# test_yum

## Description

Example recipe which illustrates problem with yum recipe.

## Instructions

run rspec

```
rspec --color -f d


Failures:

  1) test_yum::default When all attributes are default, on an unspecified platform converges successfully
     Failure/Error: expect { chef_run }.to_not raise_error
       expected no Exception, got #<NoMethodError: undefined method `[]' for nil:NilClass> with backtrace:
         # /tmp/d20151027-10416-1me0hdk/cookbooks/yum-centos/recipes/default.rb:22:in `block in from_file'
         # /tmp/d20151027-10416-1me0hdk/cookbooks/yum-centos/recipes/default.rb:21:in `each'
         # /tmp/d20151027-10416-1me0hdk/cookbooks/yum-centos/recipes/default.rb:21:in `from_file'
         # /tmp/d20151027-10416-1me0hdk/cookbooks/test_yum/recipes/default.rb:8:in `block in from_file'
         # /tmp/d20151027-10416-1me0hdk/cookbooks/test_yum/recipes/default.rb:7:in `each'
         # /tmp/d20151027-10416-1me0hdk/cookbooks/test_yum/recipes/default.rb:7:in `from_file'
         # ./spec/unit/recipes/default_spec.rb:13:in `block (3 levels) in <top (required)>'
         # ./spec/unit/recipes/default_spec.rb:17:in `block (4 levels) in <top (required)>'
         # ./spec/unit/recipes/default_spec.rb:17:in `block (3 levels) in <top (required)>'
     # ./spec/unit/recipes/default_spec.rb:17:in `block (3 levels) in <top (required)>'

  2) test_yum::yum_centos_test When all attributes are default, on an unspecified platform converges successfully
     Failure/Error: expect { chef_run }.to_not raise_error
       expected no Exception, got #<NoMethodError: undefined method `[]' for nil:NilClass> with backtrace:
         # /tmp/d20151027-10416-13kr69u/cookbooks/yum-centos/recipes/default.rb:22:in `block in from_file'
         # /tmp/d20151027-10416-13kr69u/cookbooks/yum-centos/recipes/default.rb:21:in `each'
         # /tmp/d20151027-10416-13kr69u/cookbooks/yum-centos/recipes/default.rb:21:in `from_file'
         # /tmp/d20151027-10416-13kr69u/cookbooks/test_yum/recipes/yum_centos_test.rb:7:in `from_file'
         # ./spec/unit/recipes/yum_centos_test_spec.rb:13:in `block (3 levels) in <top (required)>'
         # ./spec/unit/recipes/yum_centos_test_spec.rb:17:in `block (4 levels) in <top (required)>'
         # ./spec/unit/recipes/yum_centos_test_spec.rb:17:in `block (3 levels) in <top (required)>'
     # ./spec/unit/recipes/yum_centos_test_spec.rb:17:in `block (3 levels) in <top (required)>'

Finished in 3.23 seconds (files took 2.65 seconds to load)
4 examples, 2 failures

Failed examples:

rspec ./spec/unit/recipes/default_spec.rb:16 # test_yum::default When all attributes are default, on an unspecified platform converges successfully
rspec ./spec/unit/recipes/yum_centos_test_spec.rb:16 # test_yum::yum_centos_test When all attributes are default, on an unspecified platform converges successfully
```
