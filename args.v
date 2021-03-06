module main

enum ArgType {
	bool_t string_t int_t float_t
}

struct Arguments {
pub:
	arguments []Argumenter
	name string
	version string
	authors []string
	homepage string
}

interface Argumenter {
	do_match(arg string) bool
}

struct BaseArg {
pub:
	arg_type ArgType
	name string
	aliases []string
	help string
}

fn (self BaseArg) do_match(arg string) bool {
	// this should parse several styles
	// (bare|-short|--long)(=<str>|<int>|<float>) 
	// (NOTE: This isn't supposed to be a valid regex)
	return false
}

fn bool_arg(n string, a []string, h string) &BaseArg {
	return &BaseArg{ArgType.bool_t, n, a, h}
}

fn string_arg(n string, a []string, h string) &BaseArg {
	return &BaseArg{ArgType.string_t, n, a, h}
}
