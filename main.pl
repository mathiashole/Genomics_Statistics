#!/usr/bin/perl

use strict;

# Function to show help
sub show_help {
    print <<'HELP';
Use: GStat [OPTIONS]

Opciones disponibles:
    -h, --help     Show this help.
    -v, --version  Show the version of the program.
    # Missing options

Examples:
    main.pl -h
    main.pl -v
HELP
}

# Función para mostrar la versión del programa
sub show_version {
    print "GStat v0.0.1\n";
}

# Manejo de argumentos de línea de comandos
if (scalar(@ARGV) == 0) {
    show_help();
} elsif ($ARGV[0] eq '-h' || $ARGV[0] eq '--help') {
    show_help();
} elsif ($ARGV[0] eq '-v' || $ARGV[0] eq '--version') {
    show_version();
} else {
    print "Unknown option. Use '-h' or '--help' to display help.\n";
}