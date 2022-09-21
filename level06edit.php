#!/usr/bin/php
<?php
function y($m) { 
	echo "y called with " . $m . "\n";
	$m = preg_replace("/\./", " x ", $m);
	echo "y 2: " . $m . "\n";
	$m = preg_replace("/@/", " y", $m);
	echo "y 3: " . $m . "\n";
	return $m;
}
function x($y, $z) {
	echo "hallo\n";
	$a = file_get_contents($y);
	echo "hallo2\n";
	echo "contents: " . $a . "\n";
	$a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);
	echo "hallo3\n";
	echo "after replace: " . $a . "\n";
	$a = preg_replace("/\[/", "(", $a);
	$a = preg_replace("/\]/", ")", $a);
	return $a;
}

$r = x($argv[1], $argv[2]); print $r;
?>
