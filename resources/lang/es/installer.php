<?php
return [
    'welcome'           => [
        'name'      => 'Pagar dinero',
        'version'   => 'В 1.7',
        'title'     => 'Bienvenido al Instalador!',
        'sub-title' => 'Su servidor tiene todos los requisitos y permisos para esta aplicación. Antes de iniciar, necesitamos algunas informaciones sobre su base de datos:',
        'item1'     => 'Nombre de la base de datos',
        'item2'     => 'Inicio de sesión',
        'item3'     => 'Contraseña de la base',
        'item4'     => 'Base de datos host',
        'message'   => 'Utilizaremos estas informaciones para actualizar el archivo de entorno',
        'button'    => 'Vamonos !',

    ],
    'database'          => [
        'title'          => 'Configuración de la base',
        'sub-title'      => 'Si no sabes cómo llenar este formulario, contacta tu hosting',
        'dbname-label'   => 'Nombre de la base de datos (donde quieres que esté tu aplicación)',
        'username-label' => 'Nombre de usuario (su inicio de sesión en la base de datos)',
        'password-label' => 'Contraseña (Su contraseña de base de datos)',
        'host-label'     => 'Nombre de host (debe ser "localhost", si no funciona, pregunte a su proveedor de servicios de alojamiento)',
        'button'         => 'Enviar',
        'wait'           => 'Un poco de paciencia ...',

    ],
    'database-error'    => [
        'title'     => 'Error de conexión a la base',
        'sub-title' => 'No podemos conectarnos a la base de datos con su configuración:',
        'item1'     => '¿Estás seguro de tu nombre de usuario y contraseña?',
        'item2'     => '¿Estás seguro de tu nombre de host?',
        'item3'     => '¿Estás seguro de que tu servidor de base de datos está funcionando?',
        'message'   => 'Si no está seguro de entender todos estos términos, debe comunicarse con su proveedor de servicios de Internet.',
        'button'    => 'Inténtalo de nuevo !',

    ],
    'requirement-error' => [
        'title'       => 'Hay un error de requisito',
        'requirement' => 'No podemos instalar esta aplicación porque falta este requisito de PHP:',
        'php-version' => 'La versión PHP debe ser al menos 5.5.9 pero su versión es',
        'message'     => '¡Debe corregir este error para continuar la instalación!',

    ],
    'permission-error'  => [
        'title'     => 'Hay un error de permiso',
        'sub-title' => 'No podemos instalar esta aplicación porque esta carpeta no se puede escribir:',
        'message'   => '¡Debe corregir este error para continuar la instalación!',

    ],
    'register'          => [
        'title'      => 'Creación de administrador',
        'sub-title'  => 'Ahora debe ingresar información para crear administrador',
        'base-label' => 'Tu',
        'message'    => 'Necesitará su contraseña para iniciar sesión, así que ¡manténgase a salvo!',
        'button'     => 'Enviar',

    ],
    'register-fields'   => [
        'first_name' => 'Nombre de pila',
        'last_name'  => 'Apellido',
        'email'      => 'correo electrónico',
        'password'   => 'contraseña',

    ],
    'end'               => [
        'title'     => '¡Instalación exitosa!',
        'sub-title' => 'La aplicación y ahora está instalada y puedes usarla',
        'login'     => 'Su nombre de usuario :',
        'password'  => 'Tu contraseña :',
        'button'    => 'Iniciar sesión',

    ]];
