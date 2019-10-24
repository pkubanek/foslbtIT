package Foswiki::Plugins::LBTITPlugin;

use strict;

our $VERSION = '0.1';
our $RELEASE = '0.1';
our $SHORTDESCRIPTION = 'Expand IT macro to LBT IssueTracks URLs';
our $NO_PREFS_IN_TOPIC = 0;
our $pluginName = 'LBTITPlugin';

sub initPlugin {
    my( $topic, $web, $user, $installWeb ) = @_;

    Foswiki::Func::registerTagHandler( 'IT', \&_LBTIT );

    return 1;
}

sub _LBTIT {
    my($session, $params, $theTopic, $theWeb) = @_;
    
    my $id = $params->{id} || '';
    my $text = 'https://lbt.issuetrak.com/CSIssue_View.asp?IssueNbr=' . $id;
    
    return $text;
}
