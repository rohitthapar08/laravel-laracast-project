<?php

namespace App\Http\Controllers;

 
use App\User;

use App\Http\Requests\RegistrationRequest;

class RegistrationController extends Controller
{
    public function create()
    {
    	return view('registration.create');
    }

    public function store(RegistrationRequest $request)
    {
    	// $this->validate(request(),[
    	// 	'name'=>'required',
    	// 	'email'=> 'required|email',
    	// 	'password'=> 'required|confirmed'


    	// ]);

    	$user = User::create(request(['name','email','password']));

    	auth()->login($user);

        session()->flash('message','thanks for signing up');

    	return redirect()->home();

    }
}
