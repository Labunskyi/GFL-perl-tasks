
package Utilities::mySQL;

use DBI;

sub new {
    
    my $class = ref($_[0]) || $_[0];
    my $self = {};
    
    return bless ($self, $class);
}

sub connect {
    my ($self, $host, $user, $pass) = @_;
    
    my $dbh = DBI->connect("DBI:mysql:database=user1:host=localhost", "user1", "user1");
    
    return $dbh;
}


sub select {


    my($self, $dbh, $statement) = @_;
    $sth = $dbh->prepare($statement); 
    $sth->execute;
    while ($ref = $sth->fetchrow_arrayref) {
    print "$$ref[0]"; 
    print "$$ref[1]\n"; 
    } 

    $rc = $sth->finish;    
    $rc = $dbh->disconnect;  

}

1;