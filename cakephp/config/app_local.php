<?php
return [
    'debug' => filter_var(env('DEBUG', true), FILTER_VALIDATE_BOOLEAN),
    
    'Security' => [
        'salt' => env('SECURITY_SALT', 'f5497fc82d602e002345d79318c0ed9f5600fce94473d2ecb1b98872587bf8ba'),
    ],

    'Datasources' => [
        'default' => [
            'host' => 'mysql',
            'username' => 'cakephp',
            'password' => 'masato1995',
            'database' => 'main',
            'url' => env('DATABASE_URL', null),
        ],
    ],

    'EmailTransport' => [
        'default' => [
            'host' => 'localhost',
            'port' => 25,
            'username' => null,
            'password' => null,
            'client' => null,
            'url' => env('EMAIL_TRANSPORT_DEFAULT_URL', null),
        ],
    ],
];
