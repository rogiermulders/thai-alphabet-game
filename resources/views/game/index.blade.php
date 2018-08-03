@extends('layouts.game')

@section('content')
<div class="container">
    <form method="post">
        @csrf
        <div class="row">
            <div class="col-sm-12 mid-div">
                <table class="table table-striped table-hover game-bigfont">
                    @foreach($oAlphabet as $rst)
                    <tr>
                        <td>{{$rst->letter}}</td>
                        <td>{{$rst->word}}</td>
                        <td>{{$rst->meaning}}</td>
                        <td>{{$rst->phonetic}}</td>
                        <td><img src="/storage/images/{{$rst->image}}" style="width:80px"></td>
                        <td><input name="id_{{$rst->id}}">
                        <td><input type="submit" class="btn btn-danger" value="Submit"></td>
                    </tr>
                    @endforeach
                    
                    
                </table>
            </div>
        </div>
    </form>
    
</div>
@endsection
