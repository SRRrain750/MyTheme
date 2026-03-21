<?php
/*
Plugin Name: Create Multiple Pages
*/

function create_bulk_pages() {

    $pages = array(
        array('title' => 'About Us', 'content' => 'About page content'),
        array('title' => 'Services', 'content' => 'Services content'),
        array('title' => 'Contact', 'content' => 'Contact content'),
    );

    foreach ($pages as $page) {

        if (!get_page_by_title($page['title'])) {
            wp_insert_post(array(
                'post_title'   => $page['title'],
                'post_content' => $page['content'],
                'post_status'  => 'publish',
                'post_type'    => 'page',
            ));
        }
    }
}

register_activation_hook(__FILE__, 'create_bulk_pages');