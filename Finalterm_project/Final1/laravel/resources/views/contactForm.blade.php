<!doctype html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <title> Contact Us </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="{{asset ('bootstrap.min.css')}}">
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3 mt-5">
                        <h4>Contact Us </h4>

                        <form action="{{route('send.email')}}" method="POST">
                            @csrf

                            @if (Session:: has('error'))
                            <div class="alter alter-danger">
                                {{Session::get('error')}}
                           </div>
                            @endif

                            @if(Session::has('success'))
                            <div class="alert alert-success">
                                {{Session::get('success')}}

                            </div>
                            @endif
                            <div class="form-group">
                                <label for="">Name </label>
                                <input type="text" class="form-control" name="name" placeholder="Enter your name" value="{{old('name')}}">
                                @error('name')<span class="text-danger"> {{$message}}</spam>@enderror
                            </div>
                            <br>


                            <div class="form-group">
                                <label for="">Email </label>
                                <input type="text" class="form-control" name="email" placeholder="Enter your email" value="{{old('email')}}">
                                @error('email')<span class="text-danger"> {{$message}}</spam>@enderror
                            </div><br>


                            <div class="form-group">
                                <label for="">Subject </label>
                                <input type="text" class="form-control" name="subject" placeholder="Enter subject" value="{{old('subject')}}">
                                @error('subject')<span class="text-danger"> {{$message}}</spam>@enderror
                            </div><br>

                            <div class="form-group">
                                <label for="">Message </label>
                                <textarea name="message" class="from-control" col="4" rows="4"></textarea>
                                
                                @error('name')<span class="text-danger"> {{$message}}</spam>@enderror
                            </div>
                            <br>

                            <button class="btn btn-primary">Send</button>

</form>
</div>
</div>
</div>

</body>
</html>
