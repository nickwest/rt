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

RT::Attachment


=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

package RT::Attachment;
use RT::Record; 


use vars qw( @ISA );
@ISA= qw( RT::Record );

sub _Init {
  my $self = shift; 

  $self->Table('Attachments');
  $self->SUPER::_Init(@_);
}





=head2 Create PARAMHASH

Create takes a hash of values and creates a row in the database:

  int(11) 'TransactionId'.
  int(11) 'Parent'.
  varchar(160) 'MessageId'.
  varchar(255) 'Subject'.
  varchar(255) 'Filename'.
  varchar(80) 'ContentType'.
  varchar(80) 'ContentEncoding'.
  longtext 'Content'.
  longtext 'Headers'.

=cut




sub Create {
    my $self = shift;
    my %args = ( 
                TransactionId => '0',
                Parent => '0',
                MessageId => '',
                Subject => '',
                Filename => '',
                ContentType => '',
                ContentEncoding => '',
                Content => '',
                Headers => '',

		  @_);
    $self->SUPER::Create(
                         TransactionId => $args{'TransactionId'},
                         Parent => $args{'Parent'},
                         MessageId => $args{'MessageId'},
                         Subject => $args{'Subject'},
                         Filename => $args{'Filename'},
                         ContentType => $args{'ContentType'},
                         ContentEncoding => $args{'ContentEncoding'},
                         Content => $args{'Content'},
                         Headers => $args{'Headers'},
);

}



=head2 id

Returns the current value of id. 
(In the database, id is stored as int(11).)


=cut


=head2 TransactionId

Returns the current value of TransactionId. 
(In the database, TransactionId is stored as int(11).)



=head2 SetTransactionId VALUE


Set TransactionId to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, TransactionId will be stored as a int(11).)


=cut


=head2 Parent

Returns the current value of Parent. 
(In the database, Parent is stored as int(11).)



=head2 SetParent VALUE


Set Parent to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Parent will be stored as a int(11).)


=cut


=head2 MessageId

Returns the current value of MessageId. 
(In the database, MessageId is stored as varchar(160).)



=head2 SetMessageId VALUE


Set MessageId to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, MessageId will be stored as a varchar(160).)


=cut


=head2 Subject

Returns the current value of Subject. 
(In the database, Subject is stored as varchar(255).)



=head2 SetSubject VALUE


Set Subject to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Subject will be stored as a varchar(255).)


=cut


=head2 Filename

Returns the current value of Filename. 
(In the database, Filename is stored as varchar(255).)



=head2 SetFilename VALUE


Set Filename to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Filename will be stored as a varchar(255).)


=cut


=head2 ContentType

Returns the current value of ContentType. 
(In the database, ContentType is stored as varchar(80).)



=head2 SetContentType VALUE


Set ContentType to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, ContentType will be stored as a varchar(80).)


=cut


=head2 ContentEncoding

Returns the current value of ContentEncoding. 
(In the database, ContentEncoding is stored as varchar(80).)



=head2 SetContentEncoding VALUE


Set ContentEncoding to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, ContentEncoding will be stored as a varchar(80).)


=cut


=head2 Content

Returns the current value of Content. 
(In the database, Content is stored as longtext.)



=head2 SetContent VALUE


Set Content to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Content will be stored as a longtext.)


=cut


=head2 Headers

Returns the current value of Headers. 
(In the database, Headers is stored as longtext.)



=head2 SetHeaders VALUE


Set Headers to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Headers will be stored as a longtext.)


=cut


=head2 Creator

Returns the current value of Creator. 
(In the database, Creator is stored as int(11).)


=cut


=head2 Created

Returns the current value of Created. 
(In the database, Created is stored as datetime.)


=cut



sub _CoreAccessible {
    {
     
        id =>
		{read => 1, type => 'int(11)', default => ''},
        TransactionId => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        Parent => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        MessageId => 
		{read => 1, write => 1, type => 'varchar(160)', default => ''},
        Subject => 
		{read => 1, write => 1, type => 'varchar(255)', default => ''},
        Filename => 
		{read => 1, write => 1, type => 'varchar(255)', default => ''},
        ContentType => 
		{read => 1, write => 1, type => 'varchar(80)', default => ''},
        ContentEncoding => 
		{read => 1, write => 1, type => 'varchar(80)', default => ''},
        Content => 
		{read => 1, write => 1, type => 'longtext', default => ''},
        Headers => 
		{read => 1, write => 1, type => 'longtext', default => ''},
        Creator => 
		{read => 1, auto => 1, type => 'int(11)', default => '0'},
        Created => 
		{read => 1, auto => 1, type => 'datetime', default => ''},

 }
};


        eval "require RT::Attachment_Overlay";
        if ($@ && $@ !~ qr{^Can't locate RT/Attachment_Overlay.pm}) {
            die $@;
        };

        eval "require RT::Attachment_Vendor";
        if ($@ && $@ !~ qr{^Can't locate RT/Attachment_Vendor.pm}) {
            die $@;
        };

        eval "require RT::Attachment_Local";
        if ($@ && $@ !~ qr{^Can't locate RT/Attachment_Local.pm}) {
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

RT::Attachment_Overlay, RT::Attachment_Vendor, RT::Attachment_Local

=cut


1;
