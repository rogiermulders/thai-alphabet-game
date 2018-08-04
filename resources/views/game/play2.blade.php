@extends('layouts.game')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12 mid-div text-center game-huge">                                
                @if($yn == 'ok')<div class="alert alert-success flash-message" role="alert">YES! => {{$awnser->letter}}</div>@endif
                @if($yn === 'fail')<div class="alert alert-danger flash-message" role="alert">Nop :(</div>@endif                
            </div>            
        </div>
        
        <div class="row">
            <div class="col-sm-12 mid-div text-center">
                <table class="table game-huge">
                    <tr><td>{{$question->letter}}
                </table>
                <!--<audio id="game-audio"><source src="/storage/sounds/{{$question->sound}}" type="audio/mpeg"></audio>-->
                <audio id="game-audio"><source src="/storage/sounds/{{$awnser->sound}}" type="audio/mpeg"></audio>
            </div>            
        </div>
        
        <div class="row">
            <div class="col-sm-12 mid-div">                
                <table class="table table-striped table-hover game-huge">                    
                        @foreach($answers as $i => $rst)                        
                            @if($i % 5 === 0) <tr> @endif                                                     
                            <td class="text-center">
                                <a href="/game/play2?q={{$question->id}}&a={{$rst->id}}">                                    
                                    <img src="/storage/images/{{$rst->image}}" class="game-img">
                                </a>                                
                            </td>
                        @endforeach
                </table>
            </div>
        </div>
    
    
</div>
@endsection
