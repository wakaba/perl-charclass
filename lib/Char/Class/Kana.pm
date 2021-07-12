
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::Kana;
our $VERSION = '3.0';
use Carp;

our @EXPORT;
our @EXPORT_OK;

sub import ($;@) {
  my $from_class = shift;
  my ($to_class, $file, $line) = caller;
  no strict 'refs';
  for (@_ ? @_ : @{$from_class . '::EXPORT'}) {
    my $code = $from_class->can ($_)
        or croak qq{"$_" is not exported by the $from_class module at $file line $line};
    *{$to_class . '::' . $_} = $code;
  }
} # import


=head1 NAME

Char::Class::Kana - Regular Expression Character Classes - C<Kana>


=cut
@EXPORT_OK = qw(InKanaAll InKanaDigraph InKanaHatsuon InKanaSeion InKanaSemiVoiced InKanaSmall InKanaVoiced);

sub InKanaAll {
<<EOH;
27B0
3006
3030	3035	
303B
3041	3096	
3099	309F	
30A1	30FA	
30FC	30FF	
31F0	31FF	
FF67	FF9D	
1B000	1B11E	
1B150	1B152	
1B164	1B167	
2A708
2CF00
2CF02
EOH
}

sub InKanaDigraph {
<<EOH;
3006
309F
30FF
2A708
2CF00
2CF02
EOH
}

sub InKanaHatsuon {
<<EOH;
3098
30F3
FF9D
EOH
}

sub InKanaSeion {
<<EOH;
3042
3044
3046
3048
304A	304B	
304D
304F
3051
3053
3055
3057
3059
305B
305D
305F
3061
3064
3066
3068
306A	306F	
3072
3075
3078
307B
307E	3082	
3084
3086
3088	308D	
308F	3092	
30A2
30A4
30A6
30A8
30AA	30AB	
30AD
30AF
30B1
30B3
30B5
30B7
30B9
30BB
30BD
30BF
30C1
30C4
30C6
30C8
30CA	30CF	
30D2
30D5
30D8
30DB
30DE	30E2	
30E4
30E6
30E8	30ED	
30EF	30F2	
FF66
FF71	FF9C	
EOH
}

sub InKanaSemiVoiced {
<<EOH;
3071
3074
3077
307A
307D
30D1
30D4
30D7
30DA
30DD
EOH
}

sub InKanaSmall {
<<EOH;
3041
3043
3045
3047
3049
3063
3083
3085
3087
308E
3095	3096	
30A1
30A3
30A5
30A7
30A9
30C3
30E3
30E5
30E7
30EE
30F5	30F6	
31F0	31FF	
FF67	FF6F	
1B150	1B152	
1B164	1B167	
EOH
}

sub InKanaVoiced {
<<EOH;
3032
3034
304C
304E
3050
3052
3054
3056
3058
305A
305C
305E
3060
3062
3065
3067
3069
3070
3073
3076
3079
307C
3094
309E
30AC
30AE
30B0
30B2
30B4
30B6
30B8
30BA
30BC
30BE
30C0
30C2
30C5
30C7
30C9
30D0
30D3
30D6
30D9
30DC
30F4
30F7	30FA	
30FE
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InKanaAll>

=item C<InKanaDigraph>

=item C<InKanaHatsuon>

=item C<InKanaSeion>

=item C<InKanaSemiVoiced>

=item C<InKanaSmall>

=item C<InKanaVoiced>

=back

=cut


=head1 EXAMPLE

 use Char::Class::Kana qw(InKanaAll);
 if ($s =~ /\p{InKanaAll}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### Kana.pm ends here
