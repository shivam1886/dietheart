<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\Food;

class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $foods = Food::where(function($query) use ($request){
                        if(isset($request->search) && !empty($request->search)){
                            $query->whereRaw('LOWER(title) like ?' , '%'.strtolower($request->search).'%');
                        }
                     })
                     ->whereNull('deleted_at')->orderBy('id','desc')->paginate('10');
        return view('food.index',compact('foods'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('food.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $rules = [
            'title' => 'required',
            'description' => 'required',
            'cholesterol' => 'required',
            'image' => 'required|mimes:jpeg,jpg,png,gif'
        ];

        $request->validate($rules);

        if ($request->hasFile('image')) {
           $fileName = str_random('10').'.'.time().'.'.request()->image->getClientOriginalExtension();
           request()->image->move(public_path('images/food/'), $fileName);
         }

        $inserData = [
            'title'  => $input['title'],
            'description'  => $input['description'],
            'cholesterol'  => $input['cholesterol'],
            'image'        => $fileName
        ];

        if($request->is_active)
             $inserData['is_active'] = '1';
        else 
            $inserData['is_active']  = '0';

        $food  = Food::insertGetId($inserData);

        if($food){
            return redirect()->route('index.food')->with('status',true)->with('message',__('Successfully added food'));
        }else{
            return redirect()->route('index.food')->with('status',false)->with('message',__('Failed add food'));
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $food = Food::find($id);
       return view('food.edit',compact('food'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $rules = [
            'title' => 'required',
            'description' => 'required',
            'cholesterol' => 'required',
            'image' => 'mimes:jpeg,jpg,png,gif'
        ];

        $request->validate($rules);
        
        $fileName = null;
        if ($request->hasFile('image')) {
           $fileName = str_random('10').'.'.time().'.'.request()->image->getClientOriginalExtension();
           request()->image->move(public_path('images/food/'), $fileName);
         }

        $food  = Food::find($id);
        $food->title          = $request->title;
        $food->description    = $request->description;
        $food->cholesterol    = $request->cholesterol; 
        
        if($request->is_active)
             $food->is_active = '1';
        else 
            $food->is_active  = '0';

        if($fileName)
          $food->image = $fileName;

        if($food->update()){
            return redirect()->route('index.food')->with('status',true)->with('message',__('Successfully updated food'));
        }else{
            return redirect()->route('index.food')->with('status',false)->with('message',__('Failed update food'));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $food = Food::find($request->id);
        $food->deleted_at = date('Y-m-d H:i:s');
        if($food->update()){
            return redirect()->route('index.food')->with('status',true)->with('message',__('Successfully deleted food'));
        }else{
            return redirect()->route('index.food')->with('status',false)->with('message',__('Failed delete food'));
        }
            
    }
}
