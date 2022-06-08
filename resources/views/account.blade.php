@extends('layouts.main')

@section('container')

    <div class="container-akun-atas">
        @foreach($users as $user)
            @if($posts->count())
                @if(auth()->user()->isAdmin && $posts[0]->user['id'] !== auth()->user()->id && $posts[0]->user['isVerified'] == false) 
                    <a href="/verified/{{ $user->username }}" onclick="return confirm('Apakah user ini akan diverifikasi?');">
                        <div class="tombol-verifikasi">
                            <i class="bi bi-patch-check-fill"></i>Verifikasi
                        </div>
                    </a> 
                @endif
                @if($posts[0]->user['id'] == auth()->user()->id)             
                    <a href="/edit-akun/{{ $user->username}}"><div class="edit-akun-button">Edit</div></a>               
                @endif
            @else
                @if(auth()->user()->id)
                    <a href="/edit-akun/{{ $user->username}}"><div class="edit-akun-button">Edit</div></a>
                @endif
            @endif
            <div class="profil mb-2">
                <div class="user-photo">
                    <img src="{{ asset('storage/' . $user->photo) }}" alt="">      
                </div>
                <div>
                    <div class="user-username">
                        {{ '@' . $user->username }}
                        @if($user->isVerified)
                            <i class="bi bi-patch-check-fill"></i>
                        @endif
                    </div>
                    <div class="user-name">
                        {{ $user->name }}
                    </div>
                </div>                  
            </div>
            <div class="mb-4 user-about">{{ $user->about}}</div>
        @endforeach

        <span style="color:#EAB141;font-size:13px;">MyRecipe</span>         
    </div>

    <div class="container-akun-cari">
        <div class="input-cari-resep-anda">
          <img src="../img/cari.png" alt="">
          <form action="/account">
            <input type="text" name="keyword" id="cari-resep-anda" placeholder=" Cari Resep, Makanan, dan Minuman" autocomplete="off" value="{{ request('keyword') }}">
            <button type="submit" name="cari-resep-anda">Search</button>
          </form>
        </div>
        <p>{{ count($posts) }} Recipe</p>
    </div>


    @if($posts->count())
        @foreach($posts as $post)
            <div class="container-akun-bawah">
                <div style="width: 140px;height:100px;float:left;margin-right:10px;border-radius:10px;overflow:hidden;-moz-box-shadow: 0 2px 4px rgb(172, 171, 171);
                    -webkit-box-shadow: 0 2px 4px rgb(172, 171, 171);
                    box-shadow: 0 2px 4px rgb(172, 171, 171)">
                    <img src="{{ asset('storage/' . $post->picture) }}" alt="" style="width:140px;;">
                </div>
                <div class="crud" style="display:flex;float:right;position:relative;">
                    <ul style="list-style-type: none;">
                        <li><a href="\{{ $post->slug }}" style="float:right;width:69px;background-color:#EAB141;float:right;border-radius:20px;text-align:center;line-height:27px;color:#FFFFFF;text-decoration:none;margin-right:5px;">Lihat</a></li>
                        @if($post->user_id == auth()->user()->id || auth()->user()->isAdmin)
                        <li><a href="/edit/{{ $post->slug }}" style="float:right;width:69px;background-color:#EAB141;float:right;border-radius:20px;text-align:center;line-height:27px;color:#FFFFFF;text-decoration:none;margin-right:5px;">Edit</a></li>
                        <li><a href="/delete/{{ $post->slug }}" onclick="return confirm('Apakah anda ingin menghapus resep ini?');" style="float:right;width:69px;background-color:#EAB141;float:right;border-radius:20px;text-align:center;line-height:27px;color:#FFFFFF;text-decoration:none;margin-right:5px;">Delete</a></li>
                        @endif                      
                    </ul>                
                </div>

                <div style="height: 102px;overflow:hidden;">
                    <div style="white-space: pre-line;overflow:hidden;font-size:15px;font-family:montserrat, sans-serif;font-weight: 600px;margin:0;padding:0;max-height:100px;line-height:20px;">{{ $post->title }}</div>             
                    <div style="white-space: pre-line;margin:0;padding:0;font-size:11px;font-weight:500px;font-family:montserrat, sans-serif;overflow:hidden;max-height:52px;margin-top:3px;">{{ $post->ingredient }}</div>
                </div>                             
            </div>

        @endforeach
    @endif
    
@endsection
