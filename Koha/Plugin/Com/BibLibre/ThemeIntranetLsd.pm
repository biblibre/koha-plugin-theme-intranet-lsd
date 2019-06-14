package Koha::Plugin::Com::BibLibre::ThemeIntranetLsd;

use Modern::Perl;

use base qw(Koha::Plugins::Base);

use C4::Context;

our $VERSION = '1.1';

our $metadata = {
    name   => 'Theme Intranet LSD',
    author => 'BibLibre',
    description => 'An hallucinating theme for intranet',
    date_authored   => '2019-06-01',
    date_updated    => '2019-06-14',
    minimum_version => '17.1111000',
    maximum_version => undef,
    version         => $VERSION,
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);

    return $self;
}

sub intranet_head {
    my ( $self ) = @_;

    return q|
<style>
/*
 * LSD Intranet Theme
 */
body {
    background-color: turquoise;
}
#header > .container-fluid {
    background-color: bisque;
}
</style>
|;
}

1;
