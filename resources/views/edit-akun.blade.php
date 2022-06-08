@extends('layouts.main')

@section('container')

    <div class="container-akun" style="background:#F9F1DE;margin:0 auto 30px;border-radius:15px;width:58%;padding:20px 50px 20px 20px;min-width: 400px;">
        <form action="/edit-akun/{{ $user->username }}" method="post" enctype="multipart/form-data">
            @csrf
            <ul style="list-style-type:none;">
                <li>
                    <div style="margin:0 auto;width:140px;height:140px;border-radius:50%px;overflow:hidden;">
                        <label for="photo" >
                            <img class="photo-preview" src="{{ asset('storage/' . $user->photo) }}"  alt="" style="width:140px;">
                        </label>                                       
                    </div>
                    <div style="margin:10px auto;width:300px;">
                        <input type="file" name="photo" id="photo" onchange="previewPhoto()">
                    </div>       
                </li>
                <li>
                    <label for="name" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;">Name</label><br>
                    <input type="text" name="name" class="@error('name')is-invalid @enderror" id="edit-name"  required value="{{ $user->name }}">
                    @error('name')
                        <div class="invalid-feedback">
                        {{ $message }}
                        </div>
                    @enderror
                </li>
                <li>
                    <label for="username" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;margin-top:10px;">Username</label><br>
                    <input type="text" id="edit-username" name="username" class=" @error('username')is-invalid @enderror" required value="{{ $user->username }}">
                    @error('username')
                        <div class="invalid-feedback">
                        {{ $message }}
                        </div>
                    @enderror
                </li>
                <li>
                    <label for="about" style="color: #EAB141;font-size:18px;font-family:'Montserrat', sans-serif;margin-top:10px;">About Your Recipe and Your Self</label><br>
                    <textarea type="text" name="about" id="edit-about" rows="5" cols="50" required  style="overflow: auto;resize: none;" required value="{{ $user->about }}">{{ old('step', $user->about) }}</textarea>

                    @error('about')
                        <div class="invalid-feedback">
                        {{ $message }}
                        </div>
                    @enderror
                </li>
                <li><div style=";margin:0 auto;width:335px;display:flex;margin-top:35px;">
                        <button type="submit" name="submit" id="edit-akun">Save Changes</button>
                        <a href="/account" style="text-decoration:none;text-align:center;"> 
                            <div style="width: 155px; line-height: 34px; font-size: 15px;color:white; background-color: #EAB141; border-radius:10px;">
                                Cancel Changes
                            </div>
                        </a>
                    </div>   
                </li>
            </ul>
        </form>
    </div>

    <script>
        function previewPhoto(){
            const photo = document.querySelector('#photo');
            const photoPreview = document.querySelector('.photo-preview');
        
            photoPreview.style.display = 'block';
        
            const oFReader = new FileReader();
            oFReader.readAsDataURL(photo.files[0]);
        
            oFReader.onload = function(oFREvent){
                photoPreview.src = oFREvent.target.result;
            }
        }           
    </script>
    
@endsection