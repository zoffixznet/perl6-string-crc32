use v6;
use Test;
use String::CRC32;

my $string1 = "This is the test string";

is(
    String::CRC32.crc32($string1), 1835534707,
    "Test the CRC of a string variable"
);

is(
    String::CRC32.crc32("This is another test string"), 2154698217,
    "Test the CRC of another string variable"
);

is(
    String::CRC32.crc32("Perl6 rocks"), 1413143404,
    "Test the CRC of an awesome string",
);


# TODO fails because Buf.split() not implemented

## Test type Buf
#my $buf1 = $string1.encode("UTF-8");
#is(
#    String::CRC32.crc32($buf1), 1835534707,
#    "Test the CRC of a Buf variable",
#);

done;

