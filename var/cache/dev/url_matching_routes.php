<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/_profiler' => [[['_route' => '_profiler_home', '_controller' => 'web_profiler.controller.profiler::homeAction'], null, null, null, true, false, null]],
        '/_profiler/search' => [[['_route' => '_profiler_search', '_controller' => 'web_profiler.controller.profiler::searchAction'], null, null, null, false, false, null]],
        '/_profiler/search_bar' => [[['_route' => '_profiler_search_bar', '_controller' => 'web_profiler.controller.profiler::searchBarAction'], null, null, null, false, false, null]],
        '/_profiler/phpinfo' => [[['_route' => '_profiler_phpinfo', '_controller' => 'web_profiler.controller.profiler::phpinfoAction'], null, null, null, false, false, null]],
        '/_profiler/xdebug' => [[['_route' => '_profiler_xdebug', '_controller' => 'web_profiler.controller.profiler::xdebugAction'], null, null, null, false, false, null]],
        '/_profiler/open' => [[['_route' => '_profiler_open_file', '_controller' => 'web_profiler.controller.profiler::openAction'], null, null, null, false, false, null]],
        '/about' => [[['_route' => 'app_about', '_controller' => 'App\\Controller\\AboutController::index'], null, null, null, false, false, null]],
        '/admin/comments' => [[['_route' => 'app_admin_comments_index', '_controller' => 'App\\Controller\\AdminCommentsController::index'], null, ['GET' => 0], null, true, false, null]],
        '/admin/comments/new' => [[['_route' => 'app_admin_comments_new', '_controller' => 'App\\Controller\\AdminCommentsController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/admin' => [[['_route' => 'app_admin', '_controller' => 'App\\Controller\\AdminController::index'], null, null, null, false, false, null]],
        '/admin/pc' => [[['_route' => 'app_admin_pc_index', '_controller' => 'App\\Controller\\AdminPcController::index'], null, ['GET' => 0], null, true, false, null]],
        '/admin/pc/new' => [[['_route' => 'app_admin_pc_new', '_controller' => 'App\\Controller\\AdminPcController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/admin/post' => [[['_route' => 'app_admin_post_index', '_controller' => 'App\\Controller\\AdminPostController::index'], null, ['GET' => 0], null, true, false, null]],
        '/admin/post/new' => [[['_route' => 'app_admin_post_new', '_controller' => 'App\\Controller\\AdminPostController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/admin/user' => [[['_route' => 'app_admin_user_index', '_controller' => 'App\\Controller\\AdminUserController::index'], null, ['GET' => 0], null, true, false, null]],
        '/admin/user/new' => [[['_route' => 'app_admin_user_new', '_controller' => 'App\\Controller\\AdminUserController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/comments' => [[['_route' => 'app_comments', '_controller' => 'App\\Controller\\CommentsController::index'], null, null, null, false, false, null]],
        '/forum' => [[['_route' => 'app_forum', '_controller' => 'App\\Controller\\ForumController::index'], null, null, null, false, false, null]],
        '/' => [[['_route' => 'app_home', '_controller' => 'App\\Controller\\HomeController::index'], null, null, null, false, false, null]],
        '/pc' => [[['_route' => 'pc', '_controller' => 'App\\Controller\\PcController::index'], null, null, null, false, false, null]],
        '/register' => [[['_route' => 'app_register', '_controller' => 'App\\Controller\\RegistrationController::register'], null, null, null, false, false, null]],
        '/verify/email' => [[['_route' => 'app_verify_email', '_controller' => 'App\\Controller\\RegistrationController::verifyUserEmail'], null, null, null, false, false, null]],
        '/reset-password' => [[['_route' => 'app_forgot_password_request', '_controller' => 'App\\Controller\\ResetPasswordController::request'], null, null, null, false, false, null]],
        '/reset-password/check-email' => [[['_route' => 'app_check_email', '_controller' => 'App\\Controller\\ResetPasswordController::checkEmail'], null, null, null, false, false, null]],
        '/login' => [[['_route' => 'app_login', '_controller' => 'App\\Controller\\SecurityController::login'], null, null, null, false, false, null]],
        '/logout' => [[['_route' => 'app_logout', '_controller' => 'App\\Controller\\SecurityController::logout'], null, null, null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/a(?'
                    .'|pi(?'
                        .'|/\\.well\\-known/genid/([^/]++)(*:46)'
                        .'|(?:/(index)(?:\\.([^/]++))?)?(*:81)'
                        .'|/(?'
                            .'|docs(?:\\.([^/]++))?(*:111)'
                            .'|contexts/([^.]+)(?:\\.(jsonld))?(*:150)'
                            .'|users(?'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(*:192)'
                                .'|(?:\\.([^/]++))?(?'
                                    .'|(*:218)'
                                .')'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(?'
                                    .'|(*:256)'
                                .')'
                            .')'
                        .')'
                    .')'
                    .'|dmin/(?'
                        .'|comments/([^/]++)(?'
                            .'|(*:296)'
                            .'|/edit(*:309)'
                            .'|(*:317)'
                        .')'
                        .'|p(?'
                            .'|c/([^/]++)(?'
                                .'|(*:343)'
                                .'|/edit(*:356)'
                                .'|(*:364)'
                            .')'
                            .'|ost/([^/]++)(?'
                                .'|(*:388)'
                                .'|/edit(*:401)'
                                .'|(*:409)'
                            .')'
                        .')'
                        .'|user/([^/]++)(?'
                            .'|(*:435)'
                            .'|/edit(*:448)'
                            .'|(*:456)'
                        .')'
                    .')'
                .')'
                .'|/_(?'
                    .'|error/(\\d+)(?:\\.([^/]++))?(*:498)'
                    .'|wdt/([^/]++)(*:518)'
                    .'|profiler/([^/]++)(?'
                        .'|/(?'
                            .'|search/results(*:564)'
                            .'|router(*:578)'
                            .'|exception(?'
                                .'|(*:598)'
                                .'|\\.css(*:611)'
                            .')'
                        .')'
                        .'|(*:621)'
                    .')'
                .')'
                .'|/pc/([^/]++)(*:643)'
                .'|/reset\\-password/reset(?:/([^/]++))?(*:687)'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        46 => [[['_route' => 'api_genid', '_controller' => 'api_platform.action.not_exposed', '_api_respond' => 'true'], ['id'], null, null, false, true, null]],
        81 => [[['_route' => 'api_entrypoint', '_controller' => 'api_platform.action.entrypoint', '_format' => '', '_api_respond' => 'true', 'index' => 'index'], ['index', '_format'], null, null, false, true, null]],
        111 => [[['_route' => 'api_doc', '_controller' => 'api_platform.action.documentation', '_format' => '', '_api_respond' => 'true'], ['_format'], null, null, false, true, null]],
        150 => [[['_route' => 'api_jsonld_context', '_controller' => 'api_platform.jsonld.action.context', '_format' => 'jsonld', '_api_respond' => 'true'], ['shortName', '_format'], null, null, false, true, null]],
        192 => [[['_route' => '_api_/users/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        218 => [
            [['_route' => '_api_/users{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/users{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        256 => [
            [['_route' => '_api_/users/{id}{._format}_put', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users/{id}{._format}_put'], ['id', '_format'], ['PUT' => 0], null, false, true, null],
            [['_route' => '_api_/users/{id}{._format}_patch', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users/{id}{._format}_patch'], ['id', '_format'], ['PATCH' => 0], null, false, true, null],
            [['_route' => '_api_/users/{id}{._format}_delete', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => null, '_api_resource_class' => 'App\\Entity\\User', '_api_operation_name' => '_api_/users/{id}{._format}_delete'], ['id', '_format'], ['DELETE' => 0], null, false, true, null],
        ],
        296 => [[['_route' => 'app_admin_comments_show', '_controller' => 'App\\Controller\\AdminCommentsController::show'], ['id'], ['GET' => 0], null, false, true, null]],
        309 => [[['_route' => 'app_admin_comments_edit', '_controller' => 'App\\Controller\\AdminCommentsController::edit'], ['id'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        317 => [[['_route' => 'app_admin_comments_delete', '_controller' => 'App\\Controller\\AdminCommentsController::delete'], ['id'], ['POST' => 0], null, false, true, null]],
        343 => [[['_route' => 'app_admin_pc_show', '_controller' => 'App\\Controller\\AdminPcController::show'], ['id'], ['GET' => 0], null, false, true, null]],
        356 => [[['_route' => 'app_admin_pc_edit', '_controller' => 'App\\Controller\\AdminPcController::edit'], ['id'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        364 => [[['_route' => 'app_admin_pc_delete', '_controller' => 'App\\Controller\\AdminPcController::delete'], ['id'], ['POST' => 0], null, false, true, null]],
        388 => [[['_route' => 'app_admin_post_show', '_controller' => 'App\\Controller\\AdminPostController::show'], ['id'], ['GET' => 0], null, false, true, null]],
        401 => [[['_route' => 'app_admin_post_edit', '_controller' => 'App\\Controller\\AdminPostController::edit'], ['id'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        409 => [[['_route' => 'app_admin_post_delete', '_controller' => 'App\\Controller\\AdminPostController::delete'], ['id'], ['POST' => 0], null, false, true, null]],
        435 => [[['_route' => 'app_admin_user_show', '_controller' => 'App\\Controller\\AdminUserController::show'], ['id'], ['GET' => 0], null, false, true, null]],
        448 => [[['_route' => 'app_admin_user_edit', '_controller' => 'App\\Controller\\AdminUserController::edit'], ['id'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        456 => [[['_route' => 'app_admin_user_delete', '_controller' => 'App\\Controller\\AdminUserController::delete'], ['id'], ['POST' => 0], null, false, true, null]],
        498 => [[['_route' => '_preview_error', '_controller' => 'error_controller::preview', '_format' => 'html'], ['code', '_format'], null, null, false, true, null]],
        518 => [[['_route' => '_wdt', '_controller' => 'web_profiler.controller.profiler::toolbarAction'], ['token'], null, null, false, true, null]],
        564 => [[['_route' => '_profiler_search_results', '_controller' => 'web_profiler.controller.profiler::searchResultsAction'], ['token'], null, null, false, false, null]],
        578 => [[['_route' => '_profiler_router', '_controller' => 'web_profiler.controller.router::panelAction'], ['token'], null, null, false, false, null]],
        598 => [[['_route' => '_profiler_exception', '_controller' => 'web_profiler.controller.exception_panel::body'], ['token'], null, null, false, false, null]],
        611 => [[['_route' => '_profiler_exception_css', '_controller' => 'web_profiler.controller.exception_panel::stylesheet'], ['token'], null, null, false, false, null]],
        621 => [[['_route' => '_profiler', '_controller' => 'web_profiler.controller.profiler::panelAction'], ['token'], null, null, false, true, null]],
        643 => [[['_route' => 'pc_details', '_controller' => 'App\\Controller\\PcController::show'], ['id'], null, null, false, true, null]],
        687 => [
            [['_route' => 'app_reset_password', 'token' => null, '_controller' => 'App\\Controller\\ResetPasswordController::reset'], ['token'], null, null, false, true, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
