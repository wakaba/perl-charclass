use strict;
use vars qw(%PROP %SET %SET_ALIAS $VERSION);
$VERSION=do{my @r=(q$Revision: 1.3 $=~/\d+/g);sprintf "%d."."%02d" x $#r,@r};

$PROP{module_name} = 'FooScript';

sub header () {
<<"EOH";
## This is auto-generated (at @{[ sprintf '%04d-%02d-%02dT%02d:%02d:%02dZ', (gmtime)[5]+1900, (gmtime)[4]+1, (gmtime)[3,2,1,0] ]}).  Do not edit by hand!
use strict;

package Char::InSet::$PROP{module_name};
use Exporter;
use vars qw(\@EXPORT_OK \@ISA \$VERSION);
\@ISA = qw(Exporter);
\$VERSION = '$PROP{version}';
EOH
}

sub table () {
my $prefix = exists $PROP{prefix_name} ? $PROP{prefix_name} : $PROP{module_name};
my $r = '';
my @set;
for (sort keys %SET) {
  my (@aline,@aitem);
  $SET{$_} =~ s{^#\+(\w+)$}{
    push @aline, qq(\&In${prefix}$1.); ''
  }mge;
  $SET{$_} =~ s{^!(.+)$}{	## Pre-formated
    push @aitem, $1; ''
  }mge;
  $SET{$_} =~ s{^#.+$}{}mg;
  $SET{$_} =~ tr/\x09\x0A\x0D\x20//d;
  push @set, [qq(In${prefix}$_) => 
    join "\n", qq(sub In${prefix}$_ {),
               @aline,
               (length $SET{$_}?
                 (q(<<EOH;),
                 @aitem,
                 (map {sprintf '%04X', $_} sort {$a <=> $b}
                  map {ord $_} split //, $SET{$_}),
                 q(EOH)):
               @aitem > 0? (q(<<EOH;), @aitem, q(EOH)): "''"),
               q(})
  ];
}
for (sort keys %SET_ALIAS) {
  push @set, [qq(In${prefix}$_) => qq(\*In${prefix}$_ = \\&In${prefix}$SET_ALIAS{$_};)];
}

$r = qq(\@EXPORT_OK = qw(@{[map {$_->[0]} @set]});\n\n);
$r .= join '', map {$_->[1]."\n\n"} @set;
$r;
}

sub footer () {
my $r = <<EOH;
=head1 NAME

$PROP{module_name}.pm --- @{[ $PROP{script_name} || $PROP{module_name} ]} character sets for C<\\p{In@{[ exists $PROP{prefix_name} ? $PROP{prefix_name} : $PROP{module_name} ]}HogeHoge}> regexps

@{[$PROP{pod_description}? "=head1 DESCRIPTION

$PROP{pod_description}":'']}@{[$PROP{pod_example}? "=head1 EXAMPLE

$PROP{pod_example}":'']}@{[$PROP{pod_license}? "=head1 LICENSE

$PROP{pod_license}":"=head1 LICENSE

Copyright @{[(gmtime)[5]+1900]} $PROP{author_name} <$PROP{author_mail}>

This library and the library generated by it is free software;
you can redistribute them and/or modify them under the same
terms as Perl itself.
"]}@{[$PROP{pod_see_also}? "=head1 SEE ALSO

$PROP{pod_see_also}":'']}
=cut

1;
### $PROP{module_name}.pm ends here
EOH
$r;
}

sub col2list ($) {
  my $s = shift;
  my @s;
  $s =~ s{^[\x20\x09]*([0-9A-F][0-9A-F])((?:[\x20\x09]+[0-9A-F][0-9A-F](?:-[0-9A-F][0-9A-F])?)+)}{
    my ($r, @c) = ($1, grep {length} split /\s+/, $2);
    for (@c) {
      if (/([0-9A-F][0-9A-F])-([0-9A-F][0-9A-F])/) {
        push @s, sprintf '%s%s	%s%s	', $r,$1, $r,$2;
      } else {
        push @s, sprintf '%s%s', $r,$_;
      }
    }
  }gem;
  join ("\n", map {'!'.$_} @s)."\n";
}

sub print_module () {
  no warnings;
  print &header.&table.&footer;
}

=head1 NAME

mkpm.pl --- Char::InSet::Han modules generating library

=head1 LICENSE

Copyright 2002 Wakaba <w@suika.fam.cx>

This library and the library generated by it is free software;
you can redistribute them and/or modify them under the same
terms as Perl itself.

=cut

1; ## $Date: 2002/08/24 02:43:29 $
### mkpm.pl ends here
