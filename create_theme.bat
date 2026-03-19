@echo off

:: ====== SET YOUR PATH ======
set theme_path=E:\xampp\htdocs\wordpress\wp-content\themes\MyTheme

:: Create folder
mkdir "%theme_path%"

:: ====== style.css ======
echo /*> "%theme_path%\style.css"
echo Theme Name: My Custom Theme>> "%theme_path%\style.css"
echo Author: Taniya>> "%theme_path%\style.css"
echo Description: Custom WordPress Theme>> "%theme_path%\style.css"
echo Version: 1.0>> "%theme_path%\style.css"
echo */>> "%theme_path%\style.css"

echo body { background-color:#C9BEFF; font-family:Arial; }>> "%theme_path%\style.css"

:: ====== header.php ======
echo ^<!DOCTYPE html^> > "%theme_path%\header.php"
echo ^<html^> >> "%theme_path%\header.php"
echo ^<head^> >> "%theme_path%\header.php"
echo ^<title^><?php bloginfo('name'); ?^>^</title^> >> "%theme_path%\header.php"
echo ^</head^> >> "%theme_path%\header.php"
echo ^<body^> >> "%theme_path%\header.php"
echo ^<header^> >> "%theme_path%\header.php"
echo ^<h1^><?php bloginfo('name'); ?^>^</h1^> >> "%theme_path%\header.php"
echo ^</header^> >> "%theme_path%\header.php"

:: ====== footer.php ======
echo ^<footer^> > "%theme_path%\footer.php"
echo ^<p^>© 2026 My Website^</p^> >> "%theme_path%\footer.php"
echo ^</footer^> >> "%theme_path%\footer.php"
echo ^</body^> >> "%theme_path%\footer.php"
echo ^</html^> >> "%theme_path%\footer.php"

:: ====== functions.php ======
echo ^<?php > "%theme_path%\functions.php"
echo function mytheme_styles() {>> "%theme_path%\functions.php"
echo     wp_enqueue_style('style', get_stylesheet_uri());>> "%theme_path%\functions.php"
echo }>> "%theme_path%\functions.php"
echo add_action('wp_enqueue_scripts', 'mytheme_styles');>> "%theme_path%\functions.php"
echo ?^> >> "%theme_path%\functions.php"

:: ====== index.php ======
echo ^<?php get_header(); ?^> > "%theme_path%\index.php"
echo ^<h2^>Welcome to My Theme^</h2^> >> "%theme_path%\index.php"
echo ^<?php get_footer(); ?^> >> "%theme_path%\index.php"

:: ====== single.php ======
echo ^<?php get_header(); ?^> > "%theme_path%\single.php"
echo ^<?php if(have_posts()): while(have_posts()): the_post(); ?^> >> "%theme_path%\single.php"
echo ^<h2^><?php the_title(); ?^>^</h2^> >> "%theme_path%\single.php"
echo ^<p^><?php the_content(); ?^>^</p^> >> "%theme_path%\single.php"
echo ^<?php endwhile; endif; ?^> >> "%theme_path%\single.php"
echo ^<?php get_footer(); ?^> >> "%theme_path%\single.php"

:: ====== page.php ======
echo ^<?php get_header(); ?^> > "%theme_path%\page.php"
echo ^<?php if(have_posts()): while(have_posts()): the_post(); ?^> >> "%theme_path%\page.php"
echo ^<h2^><?php the_title(); ?^>^</h2^> >> "%theme_path%\page.php"
echo ^<div^><?php the_content(); ?^>^</div^> >> "%theme_path%\page.php"
echo ^<?php endwhile; endif; ?^> >> "%theme_path%\page.php"
echo ^<?php get_footer(); ?^> >> "%theme_path%\page.php"

echo.
echo ===== Theme Created Successfully! =====
pause