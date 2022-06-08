@extends('layouts.main')

@section('container')
    
    <div class="container-2 " style="background:#F9F1DE;margin:0 auto;border-radius:15px;width:60%;padding:30px 20px 10px 20px;min-width: 400px;transform: translate(0,-40px);height:70px;">
        <a href="/edit/{{ $post->slug}}"><div class="edit" style="width:69px;background-color:#EAB141;float:right;border-radius:5px;text-align:center;line-height:27px;color:white;float:left;">Edit</div></a> 
        <a href="/edit/{{ $post->slug}}">
            <div class="edit" style="width:140px;background-color:#EAB141;float:right;border-radius:5px;text-align:center;line-height:27px;color:white;float:right;">
                <i class="bi bi-trash-fill"> </i>Delete Recipe
            </div>
        </a>
    </div>
    
    <div class="container-2" style="background:#F9F1DE;margin:0 auto 30px;border-radius:15px;width:60%;padding-bottom:10px;min-width: 400px;transform: translate(0,-30px);">
        <div style="width:322px;margin: 0 auto;padding-top:20px;">
            <div style="width:322px;height:230px;border-radius: 23px;overflow:hidden;">
                <img src="{{ asset('storage/' . $post->picture) }}" alt="" style="width:322px;">
            </div>  
            <p style="font-size:24px;margin:10px 0;color:#EAB141;text-align: center;max-width: 100%;overflow:hidden;">{{ $post->title }}</p>       
        </div>

        <hr style="height:2px;color:#EAB141;">
        <div style="width:80%;margin:10px auto;">
            <div style="color:#EAB141;font-size:20px;font-family:'Montserrat', sans-serif;margin-bottom:10px;">Bahan-bahan</div>
            <div style="font-weight:500;line-height:20px;color:#7D7B75;font-size:16px;white-space: pre-line;max-width: 100%;overflow:hidden;font-family:'Montserrat',sans-serif;">{{ $post->ingredient }}</div>
        </div>

        <hr style="height:2px;color:#EAB141;">
        <div style="width:80%;margin:10px auto;">
            <div style="color:#EAB141;font-size:20px;font-family:'Montserrat', sans-serif;margin-bottom:10px;">Langkah-langkah</div>
            <div style="font-weight:500;line-height:20px;color:#7D7B75;font-size:16px;white-space: pre-line;max-width: 100%;overflow:hidden;font-family:'Montserrat',sans-serif;">{{ $post->step }}</div>
        </div>

        <hr style="height:2px;color:#EAB141;">
        <div class="text-center">
            <img class="mb-4 rounded-circle" src="{{ asset('storage/' . $post->user->photo) }}" width="149" top="50">
            <div style="font-size:24px;font-family:'Montserrat', sans-serif;color:#EAB141">Published By</div>
            <div style="font-size:16px;font-family:'Montserrat', sans-serif;color:#000000;overflow:hidden;">{{ $post->user->username }}
                @if($post->user->isVerified)
                    <i class="bi bi-patch-check-fill" style="color: #5C93FF;margin-left: 1px;"></i>
                @endif
            </div>
            <div style="font-size:16px;font-family:'Montserrat', sans-serif;color:#EAB141;">{{ $post->updated_at->format('M, d Y') }}</div>
        </div>
    </div>
    
@endsection