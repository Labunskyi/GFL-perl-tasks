use Utilities::mySQL;


my $obj = Utilities::mySQL->new();

my $conn = $obj->connect();
$obj->select($conn, "Select * from user");