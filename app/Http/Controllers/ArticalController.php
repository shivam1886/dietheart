<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\Artical;

class ArticalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $articals = Artical::where(function($query) use ($request){
                        if(isset($request->search) && !empty($request->search)){
                            $query->whereRaw('LOWER(title) like ?' , '%'.strtolower($request->search).'%');
                        }
                     })
                     ->whereNull('deleted_at')->orderBy('id','desc')->paginate('10');
        return view('artical.index',compact('articals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('artical.create');
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
            'image' => 'required|mimes:jpeg,jpg,png,gif'
        ];

        $request->validate($rules);

        if ($request->hasFile('image')) {
           $fileName = str_random('10').'.'.time().'.'.request()->image->getClientOriginalExtension();
           request()->image->move(public_path('images/artical/'), $fileName);
         }

        $inserData = [
            'title'  => $input['title'],
            'description'  => $input['description'],
            'image'        => $fileName
        ];

        if($request->is_active)
             $inserData['is_active'] = '1';
        else 
            $inserData['is_active']  = '0';

        $artical  = Artical::insertGetId($inserData);

        if($artical){
            return redirect()->route('index.artical')->with('status',true)->with('message',__('Successfully added artical'));
        }else{
            return redirect()->route('index.artical')->with('status',false)->with('message',__('Failed add artical'));
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id = null)
    { 
       $id = 1;
       $artical = Artical::find($id);
       return view('artical.edit',compact('artical'));
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
            'image' => 'mimes:jpeg,jpg,png,gif'
        ];

        $request->validate($rules);
        
        $fileName = null;
        if ($request->hasFile('image')) {
           $fileName = str_random('10').'.'.time().'.'.request()->image->getClientOriginalExtension();
           request()->image->move(public_path('images/artical/'), $fileName);
         }

        $artical  = Artical::find($id);
        $artical->title          = $request->title;
        $artical->description    = $request->description;
        
        if($request->is_active)
             $artical->is_active = '1';
        else 
            $artical->is_active  = '0';

        if($fileName)
          $artical->image = $fileName;

        if($artical->update()){
            return redirect()->back()->with('status',true)->with('message',__('Successfully updated fact'));
        }else{
            return redirect()->back()->with('status',false)->with('message',__('Failed update fact'));
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
        $artical = Artical::find($request->id);
        $artical->deleted_at = date('Y-m-d H:i:s');
        if($artical->update()){
            return redirect()->route('index.artical')->with('status',true)->with('message',__('Successfully deleted artical'));
        }else{
            return redirect()->route('index.artical')->with('status',false)->with('message',__('Failed delete artical'));
        }
            
    }
}
