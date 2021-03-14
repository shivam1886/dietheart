<?php

namespace App\Http\Controllers\Api\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Notification;
use App\User;
use App\Models\Food;
use App\Models\Artical;
use App\Models\UserDiet;
use DB;
use Validator;

class HomeController extends Controller
{

  public function getFoods(Request $request){
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required'
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }
    $foods = Food::whereNull('deleted_at')->orderBy('id','desc')->get();
    if($foods){
        $data = array();
        foreach($foods as $key => $food){
          array_push($data,[
              'id'    => $food->id,
              'title' =>  $food->title,
              'image' =>  $food->image,
              'cholesterol' => $food->cholesterol,
              'description' =>  $food->description
          ]);
        }
        $user = User::find($input['user_id']);
        $totalCholesterol = $user->totalCholesterol();
        return ['status'=>true,'message'=>__('Record found'), 'totalCholesterol' => $totalCholesterol ,'data'=>$data];        
    }
    return ['status'=>false,'message'=>__('Record not found'),'data'=>$foods];
  }

  public function getFoodDetails(Request $request){
    
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required',
              'food_id'           => 'required',
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }

    $foods = Food::whereNull('deleted_at')->orderBy('id','desc')->where('id',$request->food_id)->get();
    if($foods){
        $data = array();
        foreach($foods as $key => $food){

         $isExist = DB::table('user_diets')->where('user_id',$input['user_id'])->where('food_id',$input['food_id'])->count();
         $isDiet  = $isExist > 0 ? 1 : 0;
         array_push($data,[
              'id'    => $food->id,
              'title' =>  $food->title,
              'image' =>  $food->image,
              'cholesterol' => $food->cholesterol,
              'description' =>  $food->description,
              'is_diet'     => $isDiet
          ]);
        }
        $user = User::find($input['user_id']);
        $totalCholesterol = $user->totalCholesterol();
        return ['status'=>true,'message'=>__('Record found'),'totalCholesterol'=>$totalCholesterol,'data'=>$data[0]];        
    }
    return ['status'=>false,'message'=>__('Record not found'),'data'=>$foods];
  }

  public function addToDiet(Request $request){
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required',
              'food_id'           => 'required',
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }

    if(\DB::table('user_diets')->where('user_id',$input['user_id'])->where('food_id',$input['food_id'])->count() > 0){
        return ['status'=>false,'message'=>__('Already added to diet')];   
    }
     
    $insertId = \DB::table('user_diets')->insertGetId([
        'user_id' => $input['user_id'],
        'food_id' => $input['food_id']
    ]);

    $user = User::find($input['user_id']);
    $totalCholesterol = $user->totalCholesterol();
        return ['status'=>true,'message'=>__('Successfully added to diet') , 'totalCholesterol' => $totalCholesterol , 'data' => '1'];     

  }

  public function removeFromDiet(Request $request){
    
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required',
              'food_id'           => 'required',
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }

    $user = User::find($input['user_id']);
    $totalCholesterol = $user->totalCholesterol();
    if(\DB::table('user_diets')->where('user_id',$input['user_id'])->where('food_id',$input['food_id'])->count() > 0){
        \DB::table('user_diets')->where('user_id',$input['user_id'])->where('food_id',$input['food_id'])->delete();
        return ['status'=>true,'message'=>__('Successfully removed from diet') , 'totalCholesterol' => $totalCholesterol , 'data'=>'0'];   
    }
        return ['status'=>false,'message'=>__('Failed to remove') , 'totalCholesterol' => $totalCholesterol , 'data'=>'0'];     

  }

  public function getReports(Request $request){
    $input    = $request->all();
    $rules = [
              'user_id'           => 'required'
             ];
    $validator = Validator::make($request->all(), $rules);
    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }

    $userDiets = UserDiet::where('user_id',$input['user_id'])->orderBy('id','desc')->get();

    if($userDiets->toArray()){
        $data = array();
        $totalCholesterol = 0;
        foreach($userDiets as $key => $value){
            $totalCholesterol += $value->food->cholesterol;
            array_push($data,[
                'id'      => $value->id,
                'food_id' => $value->food_id,
                'title'   => $value->food->title,
                 'cholesterol'   => $value->food->cholesterol,
                 'image'         => $value->food->image,
                 'description'   => $value->food->description,
                 'timestamp'     => date('Y-m-d',strtotime($value->created_at)) 
            ]);
        }
        return ['status'=>true,'message'=>__('Record found'),'totalCholesterol'=>$totalCholesterol,'data'=>$data];    
    }

    return ['status'=>false,'message'=>__('Record not found')];    

  }

  public function getArticals(Request $request){
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required'
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }
    $foods = Artical::whereNull('deleted_at')->orderBy('id','desc')->get();
    $user = User::find($input['user_id']);
    $totalCholesterol = $user->totalCholesterol();
    if($foods){
        $data = array();
        foreach($foods as $key => $food){
          array_push($data,[
              'id'    => $food->id,
              'title' =>  $food->title,
              'image' =>  $food->image,
              'description' =>  $food->description
          ]);
        }
        return ['status'=>true,'message'=>__('Record found'), 'totalCholesterol' => $totalCholesterol , 'data'=>$data];        
    }
    return ['status'=>false,'message'=>__('Record not found') , 'totalCholesterol' => $totalCholesterol,'data'=>$foods];
  }

  public function getArticalDetail(Request $request){
    
    $input    = $request->all();

    $rules = [
              'user_id'           => 'required',
             // 'artical_id'        => 'required',
             ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      $errors =  $validator->errors()->all();
      return response(['status' => false , 'message' => $errors[0]] , 200);              
    }
    $user = User::find($input['user_id']);
    $totalCholesterol = $user->totalCholesterol();
    $artical_id = 1;
    $foods = Artical::whereNull('deleted_at')->orderBy('id','desc')->where('id',$artical_id)->get();
    if($foods){
        $data = array();
        foreach($foods as $key => $food){
          array_push($data,[
              'id'    => $food->id,
              'title' =>  $food->title,
              'image' =>  $food->image,
              'description' =>  $food->description
          ]);
        }
        return ['status'=>true,'message'=>__('Record found'),'totalCholesterol'=>$totalCholesterol,'data'=>$data[0]];        
    }
    return ['status'=>false,'message'=>__('Record not found'),'totalCholesterol'=>$totalCholesterol,'data'=>$foods];
  }

}
