#!/usr/bin/env perl

my $lowsha = `echo 2147000000 | shasum -a 512`;
my $low = undef;
for (my $n = 2147000000; $n > 4000000; $n--) {
	my $ndell = $n . 'dell';
	my $dellsha = `echo $n | shasum -a 512`;

	if ($dellsha lt $lowsha) {
		$low = $n;
	}
}
print $n;