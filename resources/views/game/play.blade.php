@extends('layouts.game')

@section('content')
<div class="container">
    <form method="post">
        @csrf
        <div class="row">
            <div class="col-sm-12 mid-div text-center game-huge">                
        
                @if(Session::has('flash_message_ok'))
                    <div class="alert alert-success flash-message" role="alert">
                        {{Session::get('flash_message_ok')}}
                    </div>
                @endif
                @if(Session::has('flash_message_fail'))
                    <div class="alert alert-danger flash-message" role="alert">
                        {{Session::get('flash_message_fail')}}
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
                    <tr>
                        @foreach($answers as $rst)
                            <td class="text-center">
                                <a href="/game/play?a={{$question->id}}&b={{$rst->id}}">{{$rst->letter}}</a>
                            </td>
                        @endforeach
                    
                    
                </table>
            </div>
        </div>
    </form>
    
</div>
@endsection
