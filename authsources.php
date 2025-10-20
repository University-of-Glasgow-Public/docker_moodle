<?php

$config = array(
    'admin' => array(
        'core:AdminPassword',
    ),

    'example-userpass' => array(
        'exampleauth:UserPass',
	'user1:password' => array(
	    'uid' => 'user1',
	    'firstname' => 'Fred',
	    'lastname' => 'Bloggs',
            'email' => 'user1@example.com',
        ),
	'user2:password' => array(
	    'uid' => 'user2',
            'firstname' => 'Jim',
            'lastname' => 'Smith',	    
            'email' => 'user2@example.com',
        ),
    ),

);
