use v5.40.0;
use Imager;

# At present, assumes $image_file is a non-avif image file. 
sub convert_to_avif ($image_file) {
    my $image = Imager->new;
    # pending feedback on whether it's OK to modify the file in place
    my $output_file = "avif_" . $image_file;

        $image->read(file => $image_file)
            or die $image->errstr;
        
        $image->write(file => $output_file, type => 'avif')
            or die $image->errstr;
}

convert_to_avif("eq.jpg");