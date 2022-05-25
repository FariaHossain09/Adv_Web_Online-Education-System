<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
 use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    function register (Request $req)
    {
         $validator =Validator::make($req -> all(),[
            'name'=>'required',
            'email'=>'required|email|max:191|unique:users,email',
            'password'=>'required|min:2',

        ]);

        if($validator -> fails())
        {
            return response() -> json([
                'validate_error' => $validator-> messages(),
                // 'message' => 'Registered Successfully'
            ]);

        }
        else
        {

       

        $user=new User;
        $user->name=$req->input('name');
        $user->email=$req->input('email');
        $user->password=Hash::make($req->input('password'));
        $user->save();
        //return $user;

        //cmt out for email
        return response() -> json([
            'status' => 200,
            'message' => 'Registered Successfully'
        ]);

//extra
        // if($user)
        // {
        //     try{
        //         Mail::mailer(name: 'smpt') -> to($user -> email) -> send(new UserVerification($user));

        //         return response() -> json([
        //             'status' => 200,
        //             'message' => 'Registered Successfully',
        //         ],status: 200);
        //     }
        //     catch(\Exception $err)
        //     {
        //         $user -> delete();
        //         return response() -> json([
        //             'status' => 200,
        //             'error' => 'Try again',
        //         ],status: 500);


        //     }
        }
    
}

    function login(Request $req){
        $user = User :: where ('email', $req-> email) -> first();
        if(!$user || !Hash::check($req -> password, $user ->password))
        {
            return response([
                'error' => ["Email or password is not matched"]
            ]);
        }
        return  $user;

    }
}
