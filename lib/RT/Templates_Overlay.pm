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

=head1 NAME

  RT::Templates - a collection of RT Template objects

=head1 SYNOPSIS

  use RT::Templates;

=head1 DESCRIPTION


=head1 METHODS

=begin testing

ok (require RT::Templates);

=end testing

=cut

use strict;
no warnings qw(redefine);


# {{{ sub _Init

=head2 _Init

  Returns RT::Templates specific init info like table and primary key names

=cut

sub _Init {
    
    my $self = shift;
    $self->{'table'} = "Templates";
    $self->{'primary_key'} = "id";
    return ($self->SUPER::_Init(@_));
}
# }}}

# {{{ LimitToNotInQueue

=head2 LimitToNotInQueue

Takes a queue id # and limits the returned set of templates to those which 
aren't that queue's templates.

=cut

sub LimitToNotInQueue {
    my $self = shift;
    my $queue_id = shift;
    $self->Limit(FIELD => 'Queue',
                 VALUE => "$queue_id",
                 OPERATOR => '!='
                );
}
# }}}

# {{{ LimitToGlobal

=head2 LimitToGlobal

Takes no arguments. Limits the returned set to "Global" templates
which can be used with any queue.

=cut

sub LimitToGlobal {
    my $self = shift;
    my $queue_id = shift;
    $self->Limit(FIELD => 'Queue',
                 VALUE => "0",
                 OPERATOR => '='
                );
}
# }}}

# {{{ LimitToQueue

=head2 LimitToQueue

Takes a queue id # and limits the returned set of templates to that queue's
templates

=cut

sub LimitToQueue {
    my $self = shift;
    my $queue_id = shift;
    $self->Limit(FIELD => 'Queue',
                 VALUE => "$queue_id",
                 OPERATOR => '='
                );
}
# }}}

# {{{ sub NewItem 

=head2 NewItem

Returns a new empty Template object

=cut

sub NewItem  {
  my $self = shift;

  use RT::Template;
  my $item = new RT::Template($self->CurrentUser);
  return($item);
}
# }}}

# {{{ sub Next 

=head2 Next

Returns the next template that this user can see.

=cut
  
sub Next {
    my $self = shift;
    
    
    my $templ = $self->SUPER::Next();
    if ((defined($templ)) and (ref($templ))) {
        
        # If it's part of a queue, and the user can read templates in
        # that queue, or the user can globally read templates, show it
        if ($templ->Queue && $templ->CurrentUserHasQueueRight('ShowTemplate') or
            $templ->CurrentUser->HasRight(Object => $RT::System, Right => 'ShowTemplate')) {
	    return($templ);
	}
	
	#If the user doesn't have the right to show this template
	else {	
	    return($self->Next());
	}
    }
    #if there never was any template
    else {
	return(undef);
    }	
    
}
# }}}

1;

