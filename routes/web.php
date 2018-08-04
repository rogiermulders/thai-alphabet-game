<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::match(['get','post'],'/game', 'GameController@index')->name('game');

Route::match(['get','post'],'/game/play', 'GameController@play')->name('game-play');
Route::match(['get','post'],'/game/play2', 'GameController@play2')->name('game-play2');


Route::match(['get','post'],'/scrape', 'GameController@scrape')->name('home-scrape');