<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('/coba', function(){
    echo 'Hello World';
});
$routes->get('/contain', 'contain::index');
$routes->group('book',function($r){
$r->get('/', 'Book::index');
$r->get('create', 'Book::create');
$r->post('create', 'Book::save');
$r->get('edit/(:any)', 'Book::edit/$1');
$r->post('edit/(:any)', 'Book::update/$1');
$r->delete('(:num)', 'Book::delete/$1');
$r->get('(:any)', 'Book::detail/$1');


});
$routes->group('majalah',function($rs){
    $rs->get('/', 'Majalah::index');
    $rs->get('create', 'Majalah::create');
    $rs->post('create', 'Majalah::save');
    $rs->get('edit/(:any)', 'Majalah::edit/$1');
    $rs->post('edit/(:any)', 'Majalah::update/$1');
    $rs->delete('(:num)', 'Majalah::delete/$1');
    $rs->get('(:any)', 'Majalah::detail/$1');
    
    
    });
    $routes->group('supplier',function($rs){
        $rs->get('/', 'Supplier::index');
        $rs->get('create', 'Supplier::create');
        $rs->post('create', 'Supplier::save');
        $rs->get('edit/(:num)', 'Supplier::edit/$1');
        $rs->post('edit/(:num)', 'Supplier::update/$1');
        $rs->delete('(:num)', 'Supplier::delete/$1');
       
        
        });
        $routes->group('distributor',function($rs){
            $rs->get('/', 'Distributor::index');
            $rs->get('create', 'Distributor::create');
            $rs->post('create', 'Distributor::save');
            $rs->get('edit/(:num)', 'Distributor::edit/$1');
            $rs->post('edit/(:num)', 'Distributor::update/$1');
            $rs->delete('(:num)', 'Distributor::delete/$1');
           
            
            });
$routes->get('/coba/(:any)','Home::about/$1');
$routes->addPlaceholder('uuid','[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}');
$routes->get('coba2/(:uuid)',function($uuid){
    echo "UUID: $uuid";
});
$routes->group('adm',function($r){
    $r->get('users','Admin\Users::index');
    $r->get('master','Admin\Master::index');
});


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
