use strict;
use warnings;
use v5.10;

use constant {
	NoJob         => 0,      #0
	Administrator => 1 << 0, #1
	Developer     => 1 << 1, #2
	Manager       => 1 << 2, #4
};

my $dev_ops = Administrator | Developer;


my $employee = NoJob;
# 0000

$employee |= Administrator;
# 0000
# 0001
# ----
# 0001
#print_jobs($employee); 

$employee |= Developer;
# 0001
# 0010
# ----
# 0011
#print_jobs($employee);

$employee ^= Developer;
# 0011
# 0010
# ----
# 0001
print_jobs($employee);


sub print_jobs {
	my $employee = shift;

	say "admin? " . (($employee & Administrator) == Administrator);
	say "dev? " . (($employee & Developer) == Developer);
	say "manager? " . (($employee & Manager) == Manager);
	say "devops? " . (($employee & $dev_ops) == $dev_ops);
}




