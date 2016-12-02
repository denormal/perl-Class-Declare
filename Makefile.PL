#!/usr/bin/perl -w
# Makefile.PL for Class::Declare

use 5.000;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'         => 'Class::Declare' ,
    'VERSION_FROM' => 'Declare.pm'     ,

  # list the module prerequisites
    'PREREQ_PM'    => {  Storable         => 0    ,
                        'Test::More'      => 0    ,
                        'Test::Exception' => 0.15 ,  # needed for lives_and()
                        'version'         => 0    },

  # if we've got Perl > v5.005 then we can add other module keywords
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      ( ABSTRACT_FROM => 'Declare.pm'                          ,
        AUTHOR        => 'Ian Brayshaw <ibb@cpan.org>' ) : ())
);
