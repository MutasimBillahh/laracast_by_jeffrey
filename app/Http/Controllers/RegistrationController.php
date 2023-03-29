<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Mail\Welcome;

class RegistrationController extends Controller
{
    public function create(){

        return view('registration.create');
    }

    public function store(){


            //validate the form
         $this->validate(request(),[
            'name' =>'required',
            'email' =>'required|email',
            'password' =>'required|confirmed'

         ]);

         //create user and save them
         $user = User::create(request(['name','email','password']));


         //sign them to user
         auth()->login($user);

         //SENDING MAIL:::
            \Mail::to($user)->send(new Welcome($user));

         //redirect to home page

         return redirect()->home();
    }
}
