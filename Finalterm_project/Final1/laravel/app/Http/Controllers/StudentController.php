<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use Illuminate\Support\Facades\Validator;

class StudentController extends Controller
{
    function addStudent(Request $req)
    {

        $validator =Validator::make($req -> all(),[
            'name'=>'required',
            'email'=>'required',
            'phone'=>'required|min:2',

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

        $student= new Student;
        $student -> name = $req ->input('name');
        $student -> email = $req ->input('email');
        $student -> phone = $req ->input('phone');
        $student -> save();
        //return $student;

        return response() -> json([
            'status' => 200,
            'message' => 'Student Added Successfully'
        ]);


   }
}

    function list()
    {
        return Student:: all();

    }

    function delete($id)
    {
        //return $id;
       $result = Student::where ('id', $id) -> delete();

       if($result)
       {
           return ['result'=> "Student has been removed"];
       }
    }
}
