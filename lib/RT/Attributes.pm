# {{{ BEGIN BPS TAGGED BLOCK
# 
# COPYRIGHT:
#  
# This software is Copyright (c) 1996-2004 Best Practical Solutions, LLC 
#                                          <jesse.com>
# 
# (Except where explicitly superseded by other copyright notices)
# 
# 
# LICENSE:
# 
# This work is made available to you under the terms of Version 2 of
# the GNU General Public License. A copy of that license should have
# been provided with this software, but in any event can be snarfed
# from www.gnu.org.
# 
# This work is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
# 
# 
# CONTRIBUTION SUBMISSION POLICY:
# 
# (The following paragraph is not intended to limit the rights granted
# to you to modify and distribute this software under the terms of
# the GNU General Public License and is only of importance to you if
# you choose to contribute your changes and enhancements to the
# community by submitting them to Best Practical Solutions, LLC.)
# 
# By intentionally submitting any modifications, corrections or
# derivatives to this work, or any other work intended for use with
# Request Tracker, to Best Practical Solutions, LLC, you confirm that
# you are the copyright holder for those contributions and you grant
# Best Practical Solutions,  LLC a nonexclusive, worldwide, irrevocable,
# royalty-free, perpetual, license to use, copy, create derivative
# works based on those contributions, and sublicense and distribute
# those contributions and any derivatives thereof.
# 
# }}} END BPS TAGGED BLOCK

# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#

use strict;


=head1 NAME

  RT::Attributes -- Class Description
 
=head1 SYNOPSIS

  use RT::Attributes

=head1 DESCRIPTION


=head1 METHODS

=cut

package RT::Attributes;

use RT::SearchBuilder;
use RT::Attribute;

use vars qw( @ISA );
@ISA= qw(RT::SearchBuilder);


sub _Init {
    my $self = shift;
    $self->{'table'} = 'Attributes';
    $self->{'primary_key'} = 'id';


    return ( $self->SUPER::_Init(@_) );
}


=head2 NewItem

Returns an empty new RT::Attribute item

=cut

sub NewItem {
    my $self = shift;
    return(RT::Attribute->new($self->CurrentUser));
}

        eval "require RT::Attributes_Overlay";
        if ($@ && $@ !~ qr{^Can't locate RT/Attributes_Overlay.pm}) {
            die $@;
        };

        eval "require RT::Attributes_Vendor";
        if ($@ && $@ !~ qr{^Can't locate RT/Attributes_Vendor.pm}) {
            die $@;
        };

        eval "require RT::Attributes_Local";
        if ($@ && $@ !~ qr{^Can't locate RT/Attributes_Local.pm}) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
_Vendor is for 3rd-party vendor add-ons, while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

If you'll be working with perl 5.6.0 or greater, each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::Attributes_Overlay, RT::Attributes_Vendor, RT::Attributes_Local

=cut


1;
