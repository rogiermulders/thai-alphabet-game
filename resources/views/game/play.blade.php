@extends('layouts.game')

@section('content')
<div class="container">
    <form method="post">
        
        
        <div class="row">
            <div class="col-sm-12 mid-div text-center game-huge">                
                
                @if($yn == 'ok')                
                    <div class="alert alert-success flash-message" role="alert">
                        YES! :)
                    </div>
                @endif
                @if($yn === 'fail')
                    <div class="alert alert-danger flash-message" role="alert">
                        Nop :(
                    </div>
                @endif
                
            </div>
            
        </div>

        
        <div class="row">
            <div class="col-sm-12 mid-div text-center game-huge">                
                <img src="/storage/images/{{$question->image}}">                
            </div>
            <div class="col-sm-12 mid-div text-center">                

                {{$question->phonetic}}
            </div>
            
        </div>
        
        <div class="row">
            <div class="col-sm-12 mid-div">
                
                <table class="table table-striped table-hover game-huge">
                    
                        @foreach($answers as $i => $rst)
                        
                            @if($i % 5 === 0) <tr> @endif
                                                     
                            <td class="text-center">
                                <div data-toggle="tooltip" data-html="true" data-placement="bottom" title='<img src="/storage/images/{{$rst->image}}"><br>{{$rst->phonetic}} '>
                                    
                                    <a href="/game/play?a={{$question->id}}&b={{$rst->id}}">                                    
                                        {{$rst->letter}}
                                    </a>
                                </div>
                            </td>
                        @endforeach
                </table>
            </div>
        </div>
    </form>
    
</div>
@endsection
