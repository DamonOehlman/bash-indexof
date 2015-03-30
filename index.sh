#!/usr/bin/env bash

# indexof test array
# return the 0-based index of the test item within the array
indexof() {
	local target=$1; shift
	local ii=0

	while [ ! -z "$1" ] && [ "$target" != "$1" ]; do
		((ii++)); shift
	done

	([[ "$target" == "$1" ]] && echo $ii) || echo -1
}
