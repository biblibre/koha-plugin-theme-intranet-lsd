package Koha::Plugin::Com::BibLibre::ThemeIntranetLsd;

use Modern::Perl;

use base qw(Koha::Plugins::Base);

use C4::Context;

our $VERSION = '1.3';

our $metadata = {
    name   => 'Theme Intranet LSD',
    author => 'BibLibre',
    description => 'An hallucinating theme for intranet',
    date_authored   => '2019-06-01',
    date_updated    => '2020-06-22',
    minimum_version => '19.11',
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

# Mandatory even if does nothing
sub install {
    my ( $self, $args ) = @_;
 
    return 1;
}
 
# Mandatory even if does nothing
sub upgrade {
    my ( $self, $args ) = @_;
 
    return 1;
}
 
# Mandatory even if does nothing
sub uninstall {
    my ( $self, $args ) = @_;
 
    return 1;
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
#header, #breadcrumbs {
    background-color: bisque;
}
</style>
|;
}

1;
