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

        if( !empty( $_GET ) ){

            if( $_GET['a'] == $_GET['b'] ){
                $yn = 'ok';
            } else{
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
        shuffle( $result );

        return view( 'game.play', [
            'question' => $question,
            'answers' => $result,
            'yn' => $yn ?? null
        ] );
    }

    public function index(){

        Storage::makeDirectory( 'public/images' );

        if( !empty( $_POST ) ){

            $map = [1 => '.gif', 2 => '.jpg', 3 => '.png'];

            $path = storage_path( 'app/public' );
            
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
    public function scrape(){
        $path =  storage_path( 'app/public/sounds' );
        $files = scandir($path);
        
        
        foreach($files as $file){
            if($file[0] !== '.'){                
                $f[] = explode('.', $file)[0];
            }
        }
        $oA = _Alphabet::all();
        foreach($oA as $a){            
            $d[] = str_slug($a->phonetic);
        }
        $t = array_diff ( $d, $f);
        
        echo '<pre>'; echo print_r($t,1); echo "\n\n" . __FILE__ . ':' . __LINE__ . '</pre>';
        //die();
            $contents = file_get_contents('http://www.thai-language.com/mp3/P196813.mp3');
            Storage::put( 'public/sounds/' . 'o-ang', $contents );
            
        
        echo __FILE__.':'.__LINE__.' -> '; die('WEEE');
        

        echo __FILE__.':'.__LINE__.' -> '; die('');
        Storage::makeDirectory( 'public/sounds' );
        $start = 161;
        for($i=0;$i<44;$i++){
            $html = file_get_contents('http://www.thai-language.com/let/' . ($start + $i));

            $a = explode('PlayAudioFile(\'',$html);
            $b = explode('\')',$a[1]);
            $mp3 = 'http://www.thai-language.com' . $b[0];

            $oA = _Alphabet::find($i+1);
            $name = str_slug( $oA->phonetic ) . '.mp3';
            
            $contents = file_get_contents($mp3);
            Storage::put( 'public/sounds/' . $name, $contents );
            echo $i;
        }
        

    }

}
