package DynamicAppDemo;
use Moose;
use Catalyst::Runtime '5.80002';

use Catalyst qw/
    -Debug
    ConfigLoader
/;

extends 'Catalyst';

# Ordering important. :)
with qw/
    CatalystX::DynamicComponent
    CatalystX::ModelsFromConfig
    CatalystX::ModelToControllerReflector
/;

our $VERSION = '0.01';

__PACKAGE__->config( name => 'DynamicAppDemo' );

__PACKAGE__->setup();

__PACKAGE__->meta->make_immutable;
