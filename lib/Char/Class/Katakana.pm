## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::Katakana;
our $VERSION = '2.0';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::Katakana - Regular Expression Character Classes - C<Katakana>


=cut

sub import ($;@) {
  my ($self, @sub) = (shift, @_);
  for (@sub) {
    no strict 'refs';
    *{'main::'.$_} = \&{$_};
  }
  $Exporter::ExportLevel = 1;
  $self->SUPER::import (@_);
  $Exporter::ExportLevel = 0;
}

@EXPORT_OK = qw(InKatakanaAll InKatakanaDigraph InKatakanaHatsuon InKatakanaSeion InKatakanaSemiVoiced InKatakanaSmall InKatakanaVoiced);

sub InKatakanaAll {
<<EOH;
30A1	30FA	
30FD	30FF	
31F0	31FF	
1B001
2A708
EOH
}

sub InKatakanaDigraph {
<<EOH;
30FF
2A708
EOH
}

sub InKatakanaHatsuon {
<<EOH;
30F3
EOH
}

sub InKatakanaSeion {
<<EOH;
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
EOH
}

sub InKatakanaSemiVoiced {
<<EOH;
30D1
30D4
30D7
30DA
30DD
EOH
}

sub InKatakanaSmall {
<<EOH;
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
EOH
}

sub InKatakanaVoiced {
<<EOH;
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
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InKatakanaAll>

=item C<InKatakanaDigraph>

=item C<InKatakanaHatsuon>

=item C<InKatakanaSeion>

=item C<InKatakanaSemiVoiced>

=item C<InKatakanaSmall>

=item C<InKatakanaVoiced>

=back

=cut


=head1 EXAMPLE

 use Char::Class::Katakana qw(InKatakanaAll);
 if ($s =~ /\p{InKatakanaAll}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### Katakana.pm ends here
