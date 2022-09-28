#!/usr/bin/env perl
sub t {
  $nn = $_[1];
  $xx = $_[0];
	print("hallo\n");
	print("^$xx");
	print("\n");
	print("argument:", $xx, "\n");
  $xx =~ tr/a-z/A-Z/; 
	print("after tr: ", $xx, "\n");
  $xx =~ s/\s.*//;
	print("after s: ", $xx, "\n");
}

t($ARGV[0], $ARGV[1]);
