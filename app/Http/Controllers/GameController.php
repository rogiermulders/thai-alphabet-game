<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\_Alphabet;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Session;
class GameController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware( 'auth' );
    }

    public function play(){

        if(!empty($_GET)){
            
            if($_GET['a'] == $_GET['b']){                
                $yn = 'ok';
            } else {
                $yn = 'fail';
            }
        }

        $db = _Alphabet::all()->all();


        $all = $db;
        $count = count( $all ) - 1;
        $result = [];
        for( $i = 0; $i < 10; $i++ ){
            $rand = rand( 0, $count-- );
            $result[] = $all[$rand];
            unset( $all[$rand] );
            $all = array_values( $all );
        }

        $question = $result[0];

        //
        shuffle($result);

        return view('game.play',[
            'question' => $question,
            'answers' => $result,
            'yn' => $yn ?? null
        ]);

    }
        /**
         * Show the application dashboard.
         *
         * @return \Illuminate\Http\Response
         */
        public function index(){

            Storage::makeDirectory( 'public/images' );





            if( !empty( $_POST ) ){

                $map = [1 => '.gif', 2 => '.jpg', 3 => '.png'];

                $path = storage_path( 'app/public' );
                //echo '<pre>'; echo print_r($path,1); echo "\n\n" . __FILE__ . ':' . __LINE__ . '</pre>'; die('');
                foreach( $_POST as $key => $val ){

                    if( $key !== '_token' && $val ){

                        $contents = file_get_contents( $val );
                        Storage::put( 'public/temp', $contents );
                        $test = exif_imagetype( storage_path( 'app/public' ) . '/temp' );
                        $type = $map[$test];



                        $id = explode( '_', $key )[1];
                        $oAlphabet = _Alphabet::find( $id );

                        $name = str_slug( $oAlphabet->meaning ) . $type;


                        $oAlphabet->image = $name;
                        $oAlphabet->save();

                        Storage::put( 'public/images/' . $name, $contents );
                    }
                }
            }


            $oAlphabet = _Alphabet::all();




            return view( 'game.index', [
                'oAlphabet' => $oAlphabet
                    ] );
        }

    }
    