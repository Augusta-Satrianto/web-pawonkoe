@extends('layouts.main')

@section('container')

    <div class="container-akun" style="background:#F9F1DE;margin:0 auto 50px;border-radius:15px;width:58%;padding:20px;min-width: 400px;">
        <form action="/account" method="post" enctype="multipart/form-data">
            @csrf
            <ul style="list-style-type:none;">
                <li>                 
                    <label for="picture" ></label>
                    <div style="margin:0 auto;width:300px;max-height:200px;border-radius: 23px;overflow:hidden;">
                        <img src="../img/picture.png" class="img-preview" style="width:300px;">
                    </div>
                    <div style="margin:10px auto;width:300px;">
                        <input class="@error('picture')is-invalid @enderror" type="file" name="picture" id="picture" required onchange="previewImage()">
                    </div>
                    @error('picture')
                        <div class="invalid-feedback">
                        {{ $message }}
                        </div>
                    @enderror
                </li>
                <li>
                    <label for="title" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Judul :</label>
                    <input class="@error('title')is-invalid @enderror" type="text" name="title" id="title" autocomplete="off" required value="{{ old('title') }}">
                    @error('title')
                        <div class="invalid-feedback">
                        {{ $message }}
                        </div>
                    @enderror
                </li>
                <li>
                    <label for="ingredient" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Bahan-bahan</label><br>
                    <textarea type="text" name="ingredient" id="ingredient" rows="5" cols="50" required  style="overflow: auto;resize: none;" >{{ old('ingredient') }}</textarea>
                </li>
                <li>
                    <label for="step" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Langkah-langkah</label><br>
                    <textarea type="text" name="step" id="step" rows="5" cols="50" required  style="overflow: auto;resize: none;">{{ old('step') }}</textarea>
                </li>
                <li>
                    <label for="category_id" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Kategori : </label>
                    <select id="category_id" name="category_id">
                        @foreach ($categories as $category)
                            @if(old('category_id') == $category->id)
                                <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                            @else
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endif
                        @endforeach
                    </select>
                </li>
                <li>
                    <div style=";margin:30px auto 0;width:155px;">
                        <button type="submit" name="submit" id="upload-resep">Upload Recipe</button>
                    </div>         
                </li>
            </ul>
        </form>

@endsection