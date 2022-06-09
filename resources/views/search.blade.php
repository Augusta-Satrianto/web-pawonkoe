@extends('layouts.main')

@section('container')

  <div class="container-akun" style="background:#F9F1DE;margin:0 auto 50px;border-radius:15px;width:40%;padding:20px 40px;min-width: 400px;">
    <div clas="text-center">
        <h1 style="text-align: center;color:#EAB141;font-family:montserrat;">Search Filter</h1>
    </div>
    <form action="/search">
      <label for="keyword" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Judul :</label>
      <input type="text" name="keyword" id="keyword" placeholder="Cari Judul" autocomplete="off" value="{{ request('keyword') }}">

      <label for="keyword2" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Kategori : </label><br>
      <select id="keyword2" name="keyword2">
          <option value="" selected> - </option>
          @foreach ($categoriesAll as $category)
            @if($keyword2 == $category->name)
              <option value="{{ $category->name}}" selected>{{ $category->name }}</option>
            @else
              <option value="{{ $category->name }}">{{ $category->name }}</option>
            @endif
          @endforeach
      </select>
      <br>

      <label for="keyword3" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">User : </label>
      <input type="text" name="keyword3" id="keyword3" placeholder="Cari User" autocomplete="off" value="{{ request('keyword3') }}">

      <div class="text-center mt-2">    
          <button type="submit" style="width:100px;border:none;line-height:28px;font-size:16px;color:#FFFFFF;background-color:#EAB141;border-radius:10px;"><i class="bi bi-search" style="font-size: 20px;"></i> Search</button>  
      </div>
    </form>
  </div>


    @foreach($categories as $category)
      <?php $adaResep = false; $adaResep2 = false; ?>
      @foreach($posts as $post)
        @foreach($users as $user)
          @if($post->category_id == $category->id && $post->user_id == $user->id)
            <?php $adaResep = true ?>
          @endif
        @endforeach
      @endforeach

      @if($adaResep)
          <div class="container-1 mt-5 show-category">{{ $category->name }}</div>
          <?php $adaResep2 = true ?>
      @endif
          
      <section class="regular slider">
        @foreach($posts as $post)
          @foreach($users as $user)
            @if($post->category_id == $category->id && $post->user_id == $user->id)
            <div>
              <div class="resep">
                <div class="penulis-resep">
                  <div class="penulis-photo">
                    <a href="user\{{ $post->user->username }}"><img src="{{ asset('storage/' . $post->user->photo) }}" alt=""></a>                 
                  </div>
                  <a href="user\{{ $post->user->username }}">     
                    <div class="penulis-nama">
                        {{ $post->user->username }}
                        @if($post->user->isVerified)
                            <i class="bi bi-patch-check-fill"></i>
                        @endif
                    </div>
                  </a>        
                </div>

                <a href="\{{ $post->slug }}">
                  <div class="resep-picture">
                    <img src="{{ asset('storage/' . $post->picture) }}" alt="">
                  </div>
                </a> 

                <div class="deskripsi-resep">
                  <div class="judul-resep">
                    <a href="\{{ $post->slug }}">{{ $post->title }}</a>
                    @if((strlen( $post['slug'])) <= 26)
                      <div class="mt-2"></div>
                    @endif 
                  </div>          
                  <p>{{ $post->ingredient }}</p>
                </div>

              </div>
            </div>
            @endif
          @endforeach
        @endforeach
      </section>
    @endforeach   
  @if($adaResep2 == false)
    <p class="text-center fs-5 tidak-ada-resep2">Tidak ada resep yang sesuai dengan keyword tersebut.</p>  
  @endif

@endsection
