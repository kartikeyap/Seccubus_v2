#!/usr/bin/env perl
# Copyright 2013 Frank Breedijk
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ------------------------------------------------------------------------------
# This little script checks all files te see if they are perl files and if so 
# ------------------------------------------------------------------------------

use strict;
use Test::More;

my $tests = 0;

open F, "jmvc/seccubus/seccubus.js" or diag("Unable to open jmvc/seccubus/seccubus.js");

while(<F>) {
	if ( $_ =~ /fixtures\.js/ ) {
		like( $_, qr/^\s*\/[\/\*]/, "fixtures.js disabled");
		$tests++;
	}
}
done_testing($tests);
