<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Crud;

class CrudController extends Controller
{
    public function index(){
        $crud = Crud::all();
        return view('crud.index', compact('crud'));
    }

    public function create(){
        return view('crud.create');
 
    }



    public function store(Request $request){
        $this->validate(request(),[
            'name' => 'required'
        ]);

        // Crud::insert([
        //     'name' => $request->name
        // ]);

        $crud = new Crud;

        $crud->name = $request->name;

        $crud->save();

        return redirect()->route('index');

    }


     public function edit($id){

        $crud = Crud::findOrFail($id);

        return view('crud.update', compact('crud'));
 
    }

    public function update(Request $request, $id){
        $this->validate(request(),[
            'name' => 'required'
        ]);

        $crud = Crud::findOrFail($id);
        $crud->name = $request->name;
        $crud->save();

         
        // Crud::findOrFail($id)->update([
        //     'name' => $request->name
        // ]);

        return redirect()->route('index');

    }

    public function delete($id){
        Crud::findOrFail($id)->delete();
        return redirect()->back();
    }
}
