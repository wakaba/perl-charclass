
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::JISX4051;
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

Char::Class::JISX4051 - Regular Expression Character Classes - C<JISX4051>


=cut
@EXPORT_OK = qw(InJISX4051AlphabeticExceptSpace InJISX4051AlphabeticSpace InJISX4051CharacterInDigits InJISX4051CharacterInUnitSymbol InJISX4051CloseBracket InJISX4051FullStop InJISX4051Hiragana InJISX4051JapaneseSpace InJISX4051LineStartKinsokuJapaneseCharacter InJISX4051MiddleDot InJISX4051MiscJapaneseCharacter InJISX4051OpenBracket InJISX4051PostShortenedSymbol InJISX4051PreShortenedSymbol InJISX4051SeparationSymbol InJISX4051UnseparatableCharacter InJISX4051WarichuuCloseBracket InJISX4051WarichuuOpenBracket);

sub InJISX4051AlphabeticExceptSpace {
<<EOH;
0021	007E	
00A1	017F	
0250	02A8	
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
0401	040C	
040E	044F	
0451	045C	
045E	0486	
0490	04C4	
04C7	04C8	
04CB	04CC	
04D0	04EB	
04EE	04F5	
04F8	04F9	
2000	202E	
2030	2046	
2070
2074	208E	
20A0	20AA	
2100	2138	
2153	2182	
2190	21EA	
2200	22F1	
2312
2460	24EA	
2500	2595	
25A0	25EF	
2600	2613	
261A	266F	
2701	2704	
2706	2709	
270C	2727	
2729	274B	
274D
274F	2752	
2756
2758	275E	
2761	2767	
2776	2794	
2798	27AF	
27B1	27BE	
EOH
}

sub InJISX4051AlphabeticSpace {
<<EOH;
0020
EOH
}

sub InJISX4051CharacterInDigits {
<<EOH;
0020
002C
002E
0030	0039	
EOH
}

sub InJISX4051CharacterInUnitSymbol {
<<EOH;
0041	005A	
0061	007A	
2126
EOH
}

sub InJISX4051CloseBracket {
<<EOH;
0029
002C
005D
007D
2019	201A	
201D	201E	
3001
3009
300B
300D
300F
3011
3015
3017
3019
301B
301E	301F	
EOH
}

sub InJISX4051FullStop {
<<EOH;
002E
3002
EOH
}

sub InJISX4051Hiragana {
<<EOH;
3042
3044
3046
3048
304A	3062	
3064	3082	
3084
3086
3088	308D	
308F	3094	
EOH
}

sub InJISX4051JapaneseSpace {
<<EOH;
3000
EOH
}

sub InJISX4051LineStartKinsokuJapaneseCharacter {
<<EOH;
203C
2044
301C
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
309D	309E	
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
30FC	30FE	
EOH
}

sub InJISX4051MiddleDot {
<<EOH;
003A	003B	
30FB
EOH
}

sub InJISX4051MiscJapaneseCharacter {
<<EOH;
002B
002D
003C	003E	
00A7
00A9
00AE
00B1
00B6
00D7
00F7
203B
2160	217F	
2190	21EA	
2460	24EA	
2500	2595	
25A0	25EF	
2600	2613	
261A	266E	
2701	2704	
2706	2709	
270C	2727	
2729	274B	
274D
274F	2752	
2756
2758	275E	
2761	2767	
2776	2794	
2798	27AF	
27B1	27BE	
3003	3004	
3006	3007	
3012	3013	
3020
3036
30A2
30A4
30A6
30A8
30AA	30C2	
30C4	30E2	
30E4
30E6
30E8	30ED	
30EF	30F4	
30F7	30FA	
3220	3243	
3280	32B0	
32D0	32FE	
3300	3357	
3371	3376	
3380	33DD	
4E00	9FA5	
EOH
}

sub InJISX4051OpenBracket {
<<EOH;
0028
005B
007B
2018
201B	201C	
201F
3008
300A
300C
300E
3010
3014
3016
3018
301A
301D
EOH
}

sub InJISX4051PostShortenedSymbol {
<<EOH;
0025
00A2
00B0
2030	2033	
EOH
}

sub InJISX4051PreShortenedSymbol {
<<EOH;
0024
00A3
00A5
2116
EOH
}

sub InJISX4051SeparationSymbol {
<<EOH;
0021
003F
EOH
}

sub InJISX4051UnseparatableCharacter {
<<EOH;
2014
2024	2026	
EOH
}

sub InJISX4051WarichuuCloseBracket {
<<EOH;
0029
005D
3015
EOH
}

sub InJISX4051WarichuuOpenBracket {
<<EOH;
0028
005B
3014
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InJISX4051AlphabeticExceptSpace>

=item C<InJISX4051AlphabeticSpace>

=item C<InJISX4051CharacterInDigits>

=item C<InJISX4051CharacterInUnitSymbol>

=item C<InJISX4051CloseBracket>

=item C<InJISX4051FullStop>

=item C<InJISX4051Hiragana>

=item C<InJISX4051JapaneseSpace>

=item C<InJISX4051LineStartKinsokuJapaneseCharacter>

=item C<InJISX4051MiddleDot>

=item C<InJISX4051MiscJapaneseCharacter>

=item C<InJISX4051OpenBracket>

=item C<InJISX4051PostShortenedSymbol>

=item C<InJISX4051PreShortenedSymbol>

=item C<InJISX4051SeparationSymbol>

=item C<InJISX4051UnseparatableCharacter>

=item C<InJISX4051WarichuuCloseBracket>

=item C<InJISX4051WarichuuOpenBracket>

=back

=cut


=head1 EXAMPLE

 use Char::Class::JISX4051 qw(InJISX4051AlphabeticExceptSpace);
 if ($s =~ /\p{InJISX4051AlphabeticExceptSpace}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### JISX4051.pm ends here
